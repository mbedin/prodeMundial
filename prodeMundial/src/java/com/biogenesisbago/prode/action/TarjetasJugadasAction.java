package com.biogenesisbago.prode.action;

import java.util.List;

import com.biogenesisbago.prode.model.Cliente;
import com.biogenesisbago.prode.model.Paginador;
import com.biogenesisbago.prode.model.Tarjeta;
import com.biogenesisbago.prode.service.TarjetaService;
import com.opensymphony.xwork2.Action;

public class TarjetasJugadasAction extends BasePublicAction {

	
    /**
	 * 
	 */
	private static final long serialVersionUID = -2514975465946565810L;
	
	// Services
	private TarjetaService tarjetaService;
	
	// Model Principal
	private Tarjeta tarjeta = new Tarjeta();
	private Paginador paginador = new Paginador();

	
	private List<Tarjeta> tarjetasJugadas;
    
	public TarjetasJugadasAction(TarjetaService tarjetaService) {
    	
		// Seteamos los services
    	this.tarjetaService = tarjetaService;
        
    }

    /*************************************************
     *  Getters y Setters
     *************************************************/
	public void setTarjetasJugadas(List<Tarjeta> tarjetasJugadas) {
		this.tarjetasJugadas = tarjetasJugadas;
	}

	public List<Tarjeta> getTarjetasJugadas() {
		return tarjetasJugadas;
	}
	
	public Tarjeta getTarjeta() {
		return tarjeta;
	}

	public void setTarjeta(Tarjeta tarjeta) {
		this.tarjeta = tarjeta;
	}

	public Paginador getPaginador() {
		return paginador;
	}

	public void setPaginador(Paginador paginador) {
		this.paginador = paginador;
	}
    
    /*************************************************
     *  Methods
     *************************************************/
	public String doInputInit() {
		this.paginador.setTotalRegistros(0);
		return doInput();
	}
	
	public String doInput() {
    	
		if (!isSessionActive()) return Action.LOGIN;
		
    	this.setRetorno(ACTION_PRINCIPAL);

		Cliente cliente = (Cliente)session.get(CLIENTE_LOGUEADO);
		
		// Paginar
    	if (this.paginador.getTotalRegistros() == 0) {
    		this.paginador.setNumeroPagina(1);
    		this.paginador.setTamanoPagina(Paginador.TAMANO_PAGINA);
    		this.paginador.setTotalRegistros(tarjetaService.countTarjetasJugadas(cliente.getId()));
    	} else {
    		if (Paginador.ACCION_PAGINA_ANTERIOR.equals(this.paginador.getAccion())) {
    			this.paginador.setNumeroPagina(this.paginador.getNumeroPagina()-1);
    		} else if (Paginador.ACCION_PAGINA_SIGUIENTE.equals(this.paginador.getAccion())) {
    			this.paginador.setNumeroPagina(this.paginador.getNumeroPagina()+1);
    		}
    	}
    	this.tarjetasJugadas = tarjetaService.findTarjetasJugadas(cliente.getId(),  
    			this.paginador.getNumeroPagina(), this.paginador.getTamanoPagina());
    	
        return Action.INPUT;
        
    }


    /*************************************************
     *  Common
     *************************************************/
    protected void addCommonResources() {
    	addScript("tarjetasJugadas.js");
    }
}
    
