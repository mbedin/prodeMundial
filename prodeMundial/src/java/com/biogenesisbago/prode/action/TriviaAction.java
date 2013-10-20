package com.biogenesisbago.prode.action;

import java.util.Date;

import com.biogenesisbago.prode.model.Cliente;
import com.biogenesisbago.prode.model.Pregunta;
import com.biogenesisbago.prode.model.Respuesta;
import com.biogenesisbago.prode.model.RespuestaCliente;
import com.biogenesisbago.prode.service.ClienteService;
import com.biogenesisbago.prode.service.PreguntaService;
import com.biogenesisbago.prode.service.RespuestaClienteService;
import com.biogenesisbago.prode.service.RespuestaService;
import com.opensymphony.xwork2.Action;

public class TriviaAction extends BasePublicAction {

	
    /**
	 * 
	 */
	private static final long serialVersionUID = -1911039310837868555L;

	/**
	 * 
	 */
	
	// Services
	private PreguntaService preguntaService;
	private RespuestaClienteService respuestaClienteService;
	private RespuestaService respuestaService;
	private ClienteService clienteService;
	
    // Model Principal
	private Pregunta pregunta = new Pregunta();
	private RespuestaCliente respuestaCliente = new RespuestaCliente();
	private boolean triviaJugada = false; 
	private int puntosClientes = 0;
    
	
	public TriviaAction(PreguntaService preguntaService, 
			RespuestaClienteService respuestaClienteService, 
			RespuestaService respuestaService,
			ClienteService clienteService) {
    	
		// Seteamos los services
    	this.preguntaService = preguntaService;
    	this.respuestaClienteService = respuestaClienteService;
    	this.respuestaService = respuestaService;
    	this.clienteService = clienteService;
    	
    }

    /*************************************************
     *  Getters y Setters
     *************************************************/
    
	public Pregunta getPregunta() {
		return pregunta;
	}

	public void setPregunta(Pregunta pregunta) {
		this.pregunta = pregunta;
	}

	public RespuestaCliente getRespuestaCliente() {
		return respuestaCliente;
	}

	public void setRespuestaCliente(RespuestaCliente respuestaCliente) {
		this.respuestaCliente = respuestaCliente;
	}
	
	public boolean isTriviaJugada() {
		return triviaJugada;
	}

	public void setTriviaJugada(boolean triviaJugada) {
		this.triviaJugada = triviaJugada;
	}
	
	public int getPuntosClientes() {
		return puntosClientes;
	}

	public void setPuntosClientes(int puntosClientes) {
		this.puntosClientes = puntosClientes;
	}
	
    /*************************************************
     *  Methods
     *************************************************/
    public String doInput() {
    	
    	if (!isSessionActive()) return Action.LOGIN;
        
    	this.setRetorno(ACTION_PRINCIPAL);
    	
    	// Validar si el cliente ya ingreso en la fecha
    	Cliente cliente = (Cliente)session.get(CLIENTE_LOGUEADO);
    	
    	this.triviaJugada = this.respuestaClienteService.isTriviaJugada(cliente);
    	this.puntosClientes = this.clienteService.ObtenerPuntosTriviaPorCliente(cliente);
    	
        return Action.INPUT;
    }

    public String doPregunta() {
    	
    	if (!isSessionActive()) return Action.LOGIN;
        
    	this.setRetorno(ACTION_PRINCIPAL);

    	// Obtener pregunta
    	this.pregunta = preguntaService.findPreguntaVigente(this.pregunta.getPuntos());
    	
    	if (this.pregunta == null) {
    		this.setMensaje(getText("trivia.sinPregunta"));
    		return ACTION_TRIVIA_SIN_PREGUNTA;	
    	}
    	
    	// Validar si el cliente ya ingreso en la fecha
    	Cliente cliente = (Cliente)session.get(CLIENTE_LOGUEADO);
    	RespuestaCliente respc = this.respuestaClienteService.findRespuestaCliente(cliente);
    	if (respc != null && respc.getPregunta().getId() != this.pregunta.getId()) {
    		this.setMensaje(getText("trivia.yaJugo"));
    		return ACTION_TRIVIA_JUGADA;	
    	} else if (respc == null ) {

        	// Grabar que el usuario ya jugo (solo si no esta grabado) 
        	respuestaCliente = new RespuestaCliente();
        	respuestaCliente.setCliente((Cliente)session.get(CLIENTE_LOGUEADO));
        	respuestaCliente.setPregunta(this.pregunta);
        	respuestaCliente.setFecha(new Date());
        	respuestaCliente.setRespuesta(null);
        	this.respuestaClienteService.save(respuestaCliente);

    	} else {
    		// Ya esta graba => hizo refresh
    		respuestaCliente = respc;
    	}
    	
    	// 
    	respuestaCliente.setRespuesta(new Respuesta());
    	
        return Action.INPUT;
    }

    public void validateDoRespuesta(){
    	this.setSubmitted(true);
    	this.setRetorno(ACTION_PRINCIPAL);

    	if (respuestaCliente.getRespuesta().getId() ==0 ){
 			this.addFieldError("respuestaCliente.respuesta", getText("pregunta.respuesta.missing"));
 		}
    	
    	if (this.hasFieldErrors()) {
    		respuestaCliente.setPregunta(preguntaService.find(respuestaCliente.getPregunta().getId()));
    	}
    	
    }
    
    public String doRespuesta() {
    	String strAction = Action.SUCCESS;
    	if (!isSessionActive()) return Action.LOGIN;
        
    	//this.setRetorno(ACTION_PRINCIPAL);
    	this.setRetorno(ACTION_TRIVIA);

    	// Grabar respuesta.
    	RespuestaCliente rec = respuestaClienteService.find(respuestaCliente.getId());
    	rec.setRespuesta(respuestaService.find(respuestaCliente.getRespuesta().getId()));
    	
    	if (rec.getRespuesta().getEsCorrecta()) {
    		rec.setPuntos(rec.getPregunta().getPuntos());
    		strAction = Action.SUCCESS;
    	} else {
    		strAction = ACTION_RESPUESTA_INCORRECTA;
    	}
    	
    	this.respuestaClienteService.save(rec);
    	
    	this.respuestaCliente = rec;
    	
    	return strAction;
    }

    /*************************************************
     *  Common
     *************************************************/
    protected void addCommonResources() {
    	addScript("trivia.js");
    }
    

}
