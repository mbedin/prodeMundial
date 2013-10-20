package com.biogenesisbago.prode.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

/**
 * The persistent class for the clientes database table.
 * 
 */
@Entity
@Table(name="clientes")
public class Cliente implements Serializable {
	private static final long serialVersionUID = 1L;
	private int id;
	private String EMail = "";
	private String razonSocial = "";
	private String nombreYApellido = "";
	private String password = "";
	private String usuario = "";
	private int tarjetasAnterior;
	private int tarjetasExtrasAnterior;
	private int tarjetas;
	private int tarjetasExtras;
	private boolean activo;
	private boolean JuegaPlayoff;
	private boolean aceptoBases;

    public Cliente() {
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


	@Column(nullable=false, length=200)
	public String getEMail() {
		return this.EMail;
	}
	public void setEMail(String EMail) {
		this.EMail = EMail;
	}

	
	@Column(name="RazonSocial",nullable=false, length=200)
	public String getRazonSocial() {
		return razonSocial;
	}
	
	public void setRazonSocial(String razonSocial) {
		this.razonSocial = razonSocial;
	}

	
	@Column(name="NombreYApellido", nullable=false, length=200)
	public String getNombreYApellido() {
		return this.nombreYApellido;
	}
	public void setNombreYApellido(String nombreYApellido) {
		this.nombreYApellido = nombreYApellido;
	}


	@Column(name="Password", nullable=false, length=200)
	public String getPassword() {
		return this.password;
	}
	public void setPassword(String password) {
		this.password = password;
	}


	@Column(name="Usuario", nullable=false, length=20)
	public String getUsuario() {
		return this.usuario;
	}
	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}

	@Column(name="TarjetasAnterior")
	public int getTarjetasAnterior() {
		return tarjetasAnterior;
	}
	public void setTarjetasAnterior(int tarjetasAnterior) {
		this.tarjetasAnterior = tarjetasAnterior;
	}

	@Column(name="TarjetasExtrasAnterior")
	public int getTarjetasExtrasAnterior() {
		return tarjetasExtrasAnterior;
	}
	public void setTarjetasExtrasAnterior(int tarjetasExtrasAnterior) {
		this.tarjetasExtrasAnterior = tarjetasExtrasAnterior;
	}

	@Column(name="Tarjetas")
	public int getTarjetas() {
		return tarjetas;
	}
	public void setTarjetas(int tarjetas) {
		this.tarjetas = tarjetas;
	}

	@Column(name="TarjetasExtras")
	public int getTarjetasExtras() {
		return tarjetasExtras;
	}
	public void setTarjetasExtras(int tarjetasExtras) {
		this.tarjetasExtras = tarjetasExtras;
	}
	
	@Transient
	public int getTarjetasNuevas() {
		return this.tarjetas + this.tarjetasExtras - this.tarjetasAnterior - this.tarjetasExtrasAnterior;
	}

	@Column(name="Activo")
	public boolean getActivo() {
		return this.activo;
	}

	public void setActivo(boolean activo) {
		this.activo = activo;
	}
	
	
	@Column(name="JuegaPlayOff")
	public boolean getJuegaPlayOff() {
		return this.JuegaPlayoff;
	}

	public void setJuegaPlayOff(boolean juegaPlayOff) {
		this.JuegaPlayoff = juegaPlayOff;
	}

	
	@Column(name="AceptoBases")
	public boolean getAceptoBases() {
		return this.aceptoBases;
	}

	public void setAceptoBases(boolean aceptoBases) {
		this.aceptoBases = aceptoBases;
	}





	




}