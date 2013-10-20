package com.biogenesisbago.prode.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;


/**
 * The persistent class for the grupos database table.
 * 
 */
@Entity
@Table(name="grupos")
public class Grupo implements Serializable {
	private static final long serialVersionUID = 1L;
	private int id;
	private String descripcion = "";
	private int orden;
	private List<Partido> partidos;
	private List<Equipo> equipos;
	private Equipo equipoPrimero = new Equipo();
	private Equipo equipoSegundo = new Equipo();
	private boolean premioEnviado;
	
    public Grupo() {

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


	@Column(name="Descripcion", nullable=false, length=50)
	public String getDescripcion() {
		return this.descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	@Column(name="Orden")
	public int getOrden() {
		return this.orden;
	}

	public void setOrden(int orden) {
		this.orden = orden;
	}

	//bi-directional many-to-one association to Partido
	@OneToMany(mappedBy="grupo",fetch=FetchType.EAGER)
	public List<Partido> getPartidos() {
		return this.partidos;
	}

	public void setPartidos(List<Partido> partidos) {
		this.partidos = partidos;
	}
	
	//bi-directional many-to-one association to Equipo
	@OneToMany(mappedBy="grupo")
	public List<Equipo> getEquipos() {
		return this.equipos;
	}

	public void setEquipos(List<Equipo> equipos) {
		this.equipos = equipos;
	}

	//bi-directional many-to-one association to Equipo
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="IdEquipoPrimero", nullable=true)
	public Equipo getEquipoPrimero() {
		return this.equipoPrimero;
	}

	public void setEquipoPrimero(Equipo equipoPrimero) {
		this.equipoPrimero = equipoPrimero;
	}
	
	//bi-directional many-to-one association to Equipo
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="IdEquipoSegundo", nullable=true)
	public Equipo getEquipoSegundo() {
		return this.equipoSegundo;
	}

	public void setEquipoSegundo(Equipo equipoSegundo) {
		this.equipoSegundo = equipoSegundo;
	}
	
	@Column(name="PremioEnviado")
	public void setPremioEnviado(boolean premioEnviado) {
		this.premioEnviado = premioEnviado;
	}

	public boolean isPremioEnviado() {
		return premioEnviado;
	}
	

}