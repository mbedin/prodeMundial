package com.biogenesisbago.prode.model;

import java.io.Serializable;


public class PreguntaAdapter implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2066341862394930151L;
	
	private Pregunta pregunta = new Pregunta();
	private String respuestaIncorrecta1 = "";
	private String respuestaIncorrecta2 = "";
	private String respCorrecta = "";
	private String fechaPublicacion = "";
	private String fechaFinPublicacion = "";

	public PreguntaAdapter() {

    }

	public void setPregunta(Pregunta pregunta) {
		this.pregunta = pregunta;
	}

	public Pregunta getPregunta() {
		return pregunta;
	}

	public void setRespuestaIncorrecta1(String respuestaIncorrecta1) {
		this.respuestaIncorrecta1 = respuestaIncorrecta1;
	}

	public String getRespuestaIncorrecta1() {
		return respuestaIncorrecta1;
	}

	public void setRespuestaIncorrecta2(String respuestaIncorrecta2) {
		this.respuestaIncorrecta2 = respuestaIncorrecta2;
	}

	public String getRespuestaIncorrecta2() {
		return respuestaIncorrecta2;
	}

	public void setRespCorrecta(String respCorrecta) {
		this.respCorrecta = respCorrecta;
	}

	public String getRespCorrecta() {
		return respCorrecta;
	}

	public String getFechaPublicacion() {
		return fechaPublicacion;
	}

	public void setFechaPublicacion(String fechaPublicacion) {
		this.fechaPublicacion = fechaPublicacion;
	}

	public String getFechaFinPublicacion() {
		return fechaFinPublicacion;
	}

	public void setFechaFinPublicacion(String fechaFinPublicacion) {
		this.fechaFinPublicacion = fechaFinPublicacion;
	}

}