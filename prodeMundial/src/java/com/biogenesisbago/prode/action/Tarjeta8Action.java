package com.biogenesisbago.prode.action;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import com.biogenesisbago.prode.model.Equipo;
import com.biogenesisbago.prode.model.PronosticoClasificacion;
import com.biogenesisbago.prode.model.PronosticoPartido;
import com.biogenesisbago.prode.model.Provincia;
import com.biogenesisbago.prode.model.Tarjeta;
import com.biogenesisbago.prode.model.Util;
import com.biogenesisbago.prode.service.EquipoService;
import com.biogenesisbago.prode.service.ProvinciaService;
import com.biogenesisbago.prode.service.TarjetaService;
import com.biogenesisbago.prode.service.ParametroService;
import com.opensymphony.xwork2.Action;

public class Tarjeta8Action extends BasePublicAction {

	
    /**
	 * 
	 */
	private static final long serialVersionUID = -2514975465946565810L;
	
	// Services
	private TarjetaService tarjetaService;
	private EquipoService equipoService;
	private ProvinciaService provinciaService;
	private ParametroService parametroService;
	
	// Model Principal
	private Tarjeta tarjeta = new Tarjeta();
	private boolean readOnly = false;
	private boolean cargaHabilitada = false;
	
	// Listas
	private List<Equipo> equipos = new ArrayList<Equipo>();
	private List<Provincia> provincias = new ArrayList<Provincia>();
    
	public Tarjeta8Action(EquipoService equipoService, TarjetaService tarjetaService, 
				ProvinciaService provinciaService, ParametroService parametroService ) {
    	
		// Seteamos los services
    	this.tarjetaService = tarjetaService;
    	this.equipoService = equipoService;
    	this.provinciaService = provinciaService;
    	this.setParametroService(parametroService);
    	
    }

    /*************************************************
     *  Getters y Setters
     *************************************************/
	
	public Tarjeta getTarjeta() {
		return tarjeta;
	}

	public void setTarjeta(Tarjeta tarjeta) {
		this.tarjeta = tarjeta;
	}

	public List<Equipo> getEquipos() {
		return equipos;
	}
	public void setEquipos(List<Equipo> equipos) {
		this.equipos = equipos;
	}

	public boolean isReadOnly() {
		return readOnly;
	}

	public void setReadOnly(boolean readOnly) {
		this.readOnly = readOnly;
	}
	
	public void setProvincias(List<Provincia> provincias) {
		this.provincias = provincias;
	}

	public List<Provincia> getProvincias() {
		return provincias;
	}
	
	public void setCargaHabilitada(boolean cargaHabilitada) {
		this.cargaHabilitada = cargaHabilitada;
	}

	public boolean isCargaHabilitada() {
		return cargaHabilitada;
	}
	
	public void setParametroService(ParametroService parametroService) {
		this.parametroService = parametroService;
	}

	public ParametroService getParametroService() {
		return parametroService;
	}

	/*************************************************
     *  Methods
     *************************************************/
    
	public String doInput() {
    	
		if (!isSessionActive()) return Action.LOGIN;

    	this.tarjeta = tarjetaService.find(this.tarjeta.getId());
    	this.equipos = equipoService.findAll();
    	this.provincias = provinciaService.findAll();
    	this.cargaHabilitada = true;
    	
    	ReplaceNullValues(this.tarjeta);

    	this.readOnly = this.tarjeta.getEstaCompleta();
    	
    	if (this.tarjeta.getEstaCompleta()) {
    		this.setRetorno(ACTION_TARJETAS_JUGADAS);
    	} else {
    		this.setRetorno(ACTION_TARJETAS_POR_JUGAR);
    	}

    	if (this.tarjeta.isTarjetaProductor() && this.tarjeta.getProductor().getProvincia() == null) {
    		this.tarjeta.getProductor().setProvincia(new Provincia());
    	}
    		
   		return Action.INPUT;

    }

    public String doInputModificar() {

    	if (!isSessionActive()) return Action.LOGIN;

    	this.tarjeta = tarjetaService.find(this.tarjeta.getId());
    	this.equipos = equipoService.findAll();
    	this.provincias = provinciaService.findAll();
    	this.cargaHabilitada = true;
    	
    	if(!this.cargaHabilitada){
    		this.setMensaje(getText("tarjeta.modificar.error"));
    		this.setRetorno(ACTION_TARJETAS_JUGADAS);
    		return Action.ERROR;
    	}
    	
    	ReplaceNullValues(this.tarjeta);

    	this.readOnly = false;
    	if (this.tarjeta.getEstaCompleta()) {
    		this.setRetorno(ACTION_TARJETAS_JUGADAS);
    	} else {
    		this.setRetorno(ACTION_TARJETAS_POR_JUGAR);
    	}

    	if (this.tarjeta.isTarjetaProductor() && this.tarjeta.getProductor().getProvincia() == null) {
    		this.tarjeta.getProductor().setProvincia(new Provincia());
    	}

    	return Action.INPUT;    
    }
    
    

    public void validateDoSave(){
    	
    	this.equipos = equipoService.findAll();
    	this.provincias = provinciaService.findAll();
    	this.setSubmitted(true);
    	this.setRetorno(ACTION_TARJETAS_POR_JUGAR);
    	
    	ValidateTarjeta();
    	
    	if (this.hasFieldErrors()) {
    		ReplaceNullValues(this.tarjeta);
    	}
    	
    }

    
    public String doSave() {
    	if (!isSessionActive()) return Action.LOGIN;

    	if (this.tarjeta.getEstaCompleta()) {
    		this.setRetorno(ACTION_TARJETAS_JUGADAS);
    	} else {
    		this.setRetorno(ACTION_TARJETAS_POR_JUGAR);	
    	}
    	
    	
    	try {
    		this.tarjeta.setFechaModificacion(new Date());
    		this.tarjeta.setEstaCompleta(true);
    		tarjetaService.save(this.tarjeta);
		} catch (Exception e) {
			this.setMensaje(getText("tarjeta.save.error"));
			return Action.ERROR;
		}
    		
     	this.setMensaje(getText("tarjeta.save.ok"));
    		
    	return this.getRetorno(); //Action.SUCCESS;
    }

    /*************************************************
     *  Common
     *************************************************/
    
    protected void addCommonResources() {
    	addScript("tarjeta.js");
    }

    private void ReplaceNullValues(Tarjeta tarjeta) {
    	if (tarjeta.getEquipoCampeon() == null )
    		tarjeta.setEquipoCampeon(new Equipo());
    	
    	if (tarjeta.getEquipoSubcampeon() == null )
    		tarjeta.setEquipoSubcampeon(new Equipo());
    	
    	for (Iterator iterator = tarjeta.getPronosticosClasificacion().iterator(); iterator.hasNext();) {
			PronosticoClasificacion pc = (PronosticoClasificacion) iterator.next();
			if (pc.getEquipoPrimero() == null)
				pc.setEquipoPrimero(new Equipo());
			
			if (pc.getEquipoSegundo() == null)
				pc.setEquipoSegundo(new Equipo());
		}
    	if (this.tarjeta.isTarjetaProductor() && this.tarjeta.getProductor().getProvincia() == null) {
    		this.tarjeta.getProductor().setProvincia(new Provincia());
    	}
    }

	private void ValidateTarjeta() {
		
		this.clearFieldErrors();
		Tarjeta t = tarjetaService.find(this.tarjeta.getId());

		for (Iterator<PronosticoPartido> iterator = t.getPronosticosPartidos().iterator(); iterator.hasNext();) {
			PronosticoPartido pp = (PronosticoPartido) iterator.next();
			
			if(pp.getPartido().isPermiteCarga()) {
				
				Boolean parLocal = Util.getBooleanParameter(request.getParameter("parLocal_" + pp.getId()));
				Boolean parEmpate = Util.getBooleanParameter(request.getParameter("parEmpate_" + pp.getId()));
				Boolean parVisitante = Util.getBooleanParameter(request.getParameter("parVisitante_" + pp.getId()));
				String golLocal = request.getParameter("golLocal_" + pp.getId());
				String golVisitante = request.getParameter("golVisitante_" + pp.getId());
				
				if (parLocal) {
					pp.setResultado(Tarjeta.RESULTADO_LOCAL);
				} else if (parEmpate) {
					pp.setResultado(Tarjeta.RESULTADO_EMPATE);
				} else if (parVisitante) {
					pp.setResultado(Tarjeta.RESULTADO_VISITANTE);
				} else {
		 			this.addFieldError("partido_resultado_" + pp.getId(), getText("tarjeta.error.partido.resultado.missing"));
		 			this.addFieldError("error.grupo." + pp.getPartido().getGrupo().getId(), getText("tarjeta.error.grupo"));
				}
	
				if (pp.getPartido().getEquipoLocal().getResultadoRequerido() || 
						pp.getPartido().getEquipoVisitante().getResultadoRequerido()) {
	
					if (!Util.isNumeric(golLocal) || !Util.isNumeric(golVisitante)) {
						this.addFieldError("partido_goles_" + pp.getId(), getText("tarjeta.partido.goles.missing"));
						this.addFieldError("error.grupo." + pp.getPartido().getGrupo().getId(), getText("tarjeta.error.grupo"));
					} 
					if (Util.isNumeric(golLocal)) {
						pp.setGolesLocal(Integer.parseInt(golLocal));
					}
					if (Util.isNumeric(golVisitante)) {
						pp.setGolesVisitante(Integer.parseInt(golVisitante));
					}
	
					if (Tarjeta.RESULTADO_LOCAL.equals(pp.getResultado()) &&
							pp.getGolesLocal() <= pp.getGolesVisitante()) {
						this.addFieldError("partido_goles_" + pp.getId(), getText("tarjeta.partido.resultadoGoles.distinct"));
						this.addFieldError("error.grupo." + pp.getPartido().getGrupo().getId(), getText("tarjeta.error.grupo"));
					}
	
					if (Tarjeta.RESULTADO_EMPATE.equals(pp.getResultado()) &&
							pp.getGolesLocal() != pp.getGolesVisitante()) {
						this.addFieldError("partido_goles_" + pp.getId(), getText("tarjeta.partido.resultadoGoles.distinct"));
						this.addFieldError("error.grupo." + pp.getPartido().getGrupo().getId(), getText("tarjeta.error.grupo"));
					}
	
					if (Tarjeta.RESULTADO_VISITANTE.equals(pp.getResultado()) &&
							pp.getGolesLocal() >= pp.getGolesVisitante()) {
						this.addFieldError("partido_goles_" + pp.getId(), getText("tarjeta.partido.resultadoGoles.distinct"));
						this.addFieldError("error.grupo." + pp.getPartido().getGrupo().getId(), getText("tarjeta.error.grupo"));
					}
				}	
			}
			
		}

		t.setFechaModificacion(new Date());

		this.tarjeta = t;
	}

}
