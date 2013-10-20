package com.biogenesisbago.prode.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


/**
 * The persistent class for the equipos database table.
 * 
 */
@Entity
@Table(name="equipos")
public class Equipo implements Serializable {
	private static final long serialVersionUID = 1L;
	private int id;
	private String descripcion = "";
	private String imagenBandera = "";
	private boolean resultadoRequerido = false;
	private Grupo grupo;

	
    public Equipo() {
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


	@Column(name="Descripcion", nullable=false, length=100)
	public String getDescripcion() {
		return this.descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}


	@Column(name="ImagenBandera", nullable=false, length=200)
	public String getImagenBandera() {
		return this.imagenBandera;
	}
	public void setImagenBandera(String imagenBandera) {
		this.imagenBandera = imagenBandera;
	}


	@Column(name="ResultadoRequerido", nullable=false)
	public boolean getResultadoRequerido() {
		return this.resultadoRequerido;
	}
	public void setResultadoRequerido(boolean resultadoRequerido) {
		this.resultadoRequerido = resultadoRequerido;
	}

	//bi-directional many-to-one association to Grupo
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="IdGrupo")
	public Grupo getGrupo() {
		return this.grupo;
	}

	public void setGrupo(Grupo grupo) {
		this.grupo = grupo;
	}

}