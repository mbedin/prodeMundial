package com.biogenesisbago.prode.action;

import java.util.List;

import com.biogenesisbago.prode.model.Cliente;
import com.biogenesisbago.prode.model.Paginador;
import com.biogenesisbago.prode.model.Tarjeta;
import com.biogenesisbago.prode.service.TarjetaService;
import com.opensymphony.xwork2.Action;

public class TarjetasPorJugarAction extends BasePublicAction {

	
    /**
	 * 
	 */
	private static final long serialVersionUID = -2514975465946565810L;
	
	// Services
	private TarjetaService tarjetaService;
	
	// Model Principal
	private List<Tarjeta> tarjetasPorJugar;
	private Paginador paginador = new Paginador();
    
	public TarjetasPorJugarAction(TarjetaService tarjetaService) {
    	
		// Seteamos los services
    	this.tarjetaService = tarjetaService;
        
    }

    /*************************************************
     *  Getters y Setters
     *************************************************/
	
	public List<Tarjeta> getTarjetasPorJugar() {
		return tarjetasPorJugar;
	}

	public void setTarjetasPorJugar(List<Tarjeta> tarjetasPorJugar) {
		this.tarjetasPorJugar = tarjetasPorJugar;
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
    		this.paginador.setTotalRegistros(tarjetaService.countTarjetasPorJugar(cliente.getId()));
    	} else {
    		if (Paginador.ACCION_PAGINA_ANTERIOR.equals(this.paginador.getAccion())) {
    			this.paginador.setNumeroPagina(this.paginador.getNumeroPagina()-1);
    		} else if (Paginador.ACCION_PAGINA_SIGUIENTE.equals(this.paginador.getAccion())) {
    			this.paginador.setNumeroPagina(this.paginador.getNumeroPagina()+1);
    		}
    	}
    	this.tarjetasPorJugar = tarjetaService.findTarjetasPorJugar(cliente.getId(), 
    			this.paginador.getNumeroPagina(), this.paginador.getTamanoPagina());
    	
        return Action.INPUT;
    }


    /*************************************************
     *  Common
     *************************************************/
    protected void addCommonResources() {
    	addScript("tarjetasPorJugar.js");
    }
    

}
