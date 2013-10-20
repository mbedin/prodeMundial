package com.biogenesisbago.prode.model;

import java.io.Serializable;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;


/**
 * The persistent class for the preguntas database table.
 * 
 */
@Entity
@Table(name="preguntas")
public class Pregunta implements Serializable {
	private static final long serialVersionUID = 1L;
	private int id;
	private String descripcion = "";
	private Date fechaPublicacion = new Date();
	private Date fechaFinPublicacion = new Date();
	private int puntos;
	private List<Respuesta> respuestas;

    public Pregunta() {
    }


	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="Id", unique=true, nullable=false)
	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}


	@Column(name="Descripcion", nullable=false, length=300)
	public String getDescripcion() {
		return this.descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}


    @Temporal( TemporalType.DATE)
	@Column(name="FechaPublicacion", nullable=false)
	public Date getFechaPublicacion() {
		return this.fechaPublicacion;
	}

	public void setFechaPublicacion(Date fechaPublicacion) {
		this.fechaPublicacion = fechaPublicacion;
	}

    @Temporal( TemporalType.DATE)
	@Column(name="FechaFinPublicacion", nullable=false)
	public Date getFechaFinPublicacion() {
		return this.fechaFinPublicacion;
	}

	public void setFechaFinPublicacion(Date fechaFinPublicacion) {
		this.fechaFinPublicacion = fechaFinPublicacion;
	}
	
	@Column(name="Puntos", nullable=false)
	public int getPuntos() {
		return this.puntos;
	}

	public void setPuntos(int puntos) {
		this.puntos = puntos;
	}

	//bi-directional many-to-one association to Respuesta
	@SuppressWarnings("unchecked")
	@OneToMany(mappedBy="pregunta")
	public List<Respuesta> getRespuestas() {
		if (this.respuestas != null) {
			Collections.sort(this.respuestas, new RespuestaDescripcionComparator());  
		}
		return this.respuestas;
	}

	public void setRespuestas(List<Respuesta> respuestas) {
		this.respuestas = respuestas;
	}
	
	
	@Transient
	public Respuesta getRespuestaCorrecta() {
		Respuesta correcta = null;
		for (Iterator<Respuesta> iterator = this.respuestas.iterator(); iterator.hasNext();) {
			Respuesta r = iterator.next();
			if (r.getEsCorrecta()) {
				correcta = r;
				break;
			}
		}
		return correcta;
	}
	
	@Transient
	public boolean isEditable() {
		if (fechaPublicacion == null) return true;
		return (Util.compareOnlyDates(this.fechaPublicacion, new Date()) > 0);
	}
	
}