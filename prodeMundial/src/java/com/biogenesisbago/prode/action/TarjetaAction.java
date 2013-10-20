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
import com.biogenesisbago.prode.service.ParametroService;
import com.biogenesisbago.prode.service.ProvinciaService;
import com.biogenesisbago.prode.service.TarjetaService;
import com.opensymphony.xwork2.Action;

public class TarjetaAction extends BasePublicAction {

	
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
    
	public TarjetaAction(EquipoService equipoService, TarjetaService tarjetaService, 
				ProvinciaService provinciaService, ParametroService parametroService ) {
    	
		// Seteamos los services
    	this.tarjetaService = tarjetaService;
    	this.equipoService = equipoService;
    	this.provinciaService = provinciaService;
    	this.parametroService = parametroService;
        
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
    
	/*************************************************
     *  Methods
     *************************************************/
    
	public String doInput() {
    	if (!isSessionActive()) return Action.LOGIN;

    	this.tarjeta = tarjetaService.find(this.tarjeta.getId());
    	this.equipos = equipoService.findAll();
    	this.provincias = provinciaService.findAll();
    	this.setCargaHabilitada(parametroService.getCargaHabilitadaTPFaseGrupo());  

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
    	this.cargaHabilitada = parametroService.getCargaHabilitadaTPFaseGrupo();
    	
    	if(!this.cargaHabilitada){
    		this.setRetorno(ACTION_TARJETAS_JUGADAS);
    		this.setMensaje(getText("tarjeta.modificar.error"));
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

		if (!t.isTarjetaProductor()) {
			// Validamos datos tarjeta comun
			for (Iterator<PronosticoClasificacion> iterator = t.getPronosticosClasificacion().iterator(); iterator.hasNext();) {
				PronosticoClasificacion pc = (PronosticoClasificacion) iterator.next();
				if (pc.getEquipoPrimero()==null)
					pc.setEquipoPrimero(new Equipo());
				if (pc.getEquipoSegundo()==null)
					pc.setEquipoSegundo(new Equipo());
				
				int clasificaPrimero = Integer.parseInt(request.getParameter("claPrimero_" + pc.getId()));
				int clasificaSegundo = Integer.parseInt(request.getParameter("claSegundo_" + pc.getId()));
				
				if (clasificaPrimero == -1) {
					this.addFieldError("claPrimero_" + pc.getId(), getText("tarjeta.clasificaPrimero.missing"));
					this.addFieldError("error.grupo." + pc.getGrupo().getId(), getText("tarjeta.error.grupo"));
				} else {
					pc.setEquipoPrimero(new Equipo());
					pc.getEquipoPrimero().setId(clasificaPrimero);				
				}

				if (clasificaSegundo == -1) {
					this.addFieldError("claSegundo_" + pc.getId(), getText("tarjeta.clasificaSegundo.missing"));
					this.addFieldError("error.grupo." + pc.getGrupo().getId(), getText("tarjeta.error.grupo"));
				} else {
					pc.setEquipoSegundo(new Equipo());
					pc.getEquipoSegundo().setId(clasificaSegundo);				
				} 

				if (clasificaPrimero != -1 && clasificaPrimero == clasificaSegundo) {
					this.addFieldError("claPrimero_" + pc.getId(), getText("tarjeta.clasifica.equal"));
					this.addFieldError("claSegundo_" + pc.getId(), getText("tarjeta.clasifica.equal"));
					this.addFieldError("error.grupo." + pc.getGrupo().getId(), getText("tarjeta.error.grupo"));
				}
				
			}

			if (tarjeta.getEquipoSubcampeon().getId() == -1) {
				this.addFieldError("tarjeta.equipoSubcampeon.id", getText("tarjeta.equipoSubcampeon.missing"));
				this.addFieldError("error.grupo.general", getText("tarjeta.error.grupo"));
			} else {
				t.setEquipoSubcampeon(tarjeta.getEquipoSubcampeon());
			}
			
			if (tarjeta.getEquipoCampeon().getId() == -1) {
				this.addFieldError("tarjeta.equipoCampeon.id", getText("tarjeta.equipoCampeon.missing"));
				this.addFieldError("error.grupo.general", getText("tarjeta.error.grupo"));
			} else {
				t.setEquipoCampeon(tarjeta.getEquipoCampeon());	
			}

			if (tarjeta.getEquipoCampeon().getId() != -1 &&
					tarjeta.getEquipoCampeon().getId() == tarjeta.getEquipoSubcampeon().getId()) {
				this.addFieldError("tarjeta.equipoCampeon.id", getText("tarjeta.equipoCampeonSub.equal"));
				this.addFieldError("error.grupo.general", getText("tarjeta.error.grupo"));
			}
			
			if (Util.isStringNullOrEmpty(tarjeta.getMejorJugador())) {
				this.addFieldError("tarjeta.mejorJugador", getText("tarjeta.mejorJugador.missing"));
				this.addFieldError("error.grupo.general", getText("tarjeta.error.grupo"));
			} else {
				t.setMejorJugador(tarjeta.getMejorJugador());
			}

			if (Util.isStringNullOrEmpty(tarjeta.getGoleador())) {
				this.addFieldError("tarjeta.goleador", getText("tarjeta.goleador.missing"));
				this.addFieldError("error.grupo.general", getText("tarjeta.error.grupo"));
			} else {
				t.setGoleador(tarjeta.getGoleador());
			}

		} else {
			// Validamos datos tarjeta Productor
			if (Util.isStringNullOrEmpty(tarjeta.getProductor().getNombre())) {
				this.addFieldError("error.productor.general", getText("tarjeta.productor.error"));
			} else {
				t.getProductor().setNombre(tarjeta.getProductor().getNombre());
			}
			if (Util.isStringNullOrEmpty(tarjeta.getProductor().getDNI())) {
				this.addFieldError("error.productor.general", getText("tarjeta.productor.error"));
			} else {
				t.getProductor().setDNI(tarjeta.getProductor().getDNI());
			}
			if (Util.isStringNullOrEmpty(tarjeta.getProductor().getLocalidad())) {
				this.addFieldError("error.productor.general", getText("tarjeta.productor.error"));
			} else {
				t.getProductor().setLocalidad(tarjeta.getProductor().getLocalidad());
			}
			if (tarjeta.getProductor().getProvincia().getId() == -1) {
				this.addFieldError("error.productor.general", getText("tarjeta.productor.error"));
			} else {
				t.getProductor().setProvincia(tarjeta.getProductor().getProvincia());	
			}
			if (Util.isStringNullOrEmpty(tarjeta.getProductor().getEMail())) {
				this.addFieldError("error.productor.general", getText("tarjeta.productor.error"));
			} else {
				t.getProductor().setEMail(tarjeta.getProductor().getEMail());
			}
			if (Util.isStringNullOrEmpty(tarjeta.getProductor().getEstablecimiento())) {
				this.addFieldError("error.productor.general", getText("tarjeta.productor.error"));
			} else {
				t.getProductor().setEstablecimiento(tarjeta.getProductor().getEstablecimiento());
			}			
			if (tarjeta.getProductor().getCabezas() == 0) {
				this.addFieldError("error.productor.general", getText("tarjeta.productor.error"));
			} else { 
				t.getProductor().setCabezas(tarjeta.getProductor().getCabezas());
			}
			
			t.getProductor().setTipoExplotacion(tarjeta.getProductor().getTipoExplotacion());
		}
		
		t.setFechaModificacion(new Date());

		this.tarjeta = t;
	}

	

}
