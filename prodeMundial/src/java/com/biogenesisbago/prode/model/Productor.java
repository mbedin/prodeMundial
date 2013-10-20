package com.biogenesisbago.prode.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the productores database table.
 * 
 */
@Entity
@Table(name="productores")
public class Productor implements Serializable {
	private static final long serialVersionUID = 1L;
	private int id;
	private int cabezas;
	private String dni = "";
	private String EMail = "";
	private String establecimiento = "";
	private Provincia provincia = new Provincia();
	private String localidad = "";
	private String nombre = "";
	private String tipoExplotacion = "";

    public Productor() {
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


	@Column(name="Cabezas")
	public int getCabezas() {
		return this.cabezas;
	}

	public void setCabezas(int cabezas) {
		this.cabezas = cabezas;
	}


	@Column(name="DNI", length=50)
	public String getDNI() {
		return this.dni;
	}

	public void setDNI(String dni) {
		this.dni = dni;
	}


	@Column(length=200)
	public String getEMail() {
		return this.EMail;
	}

	public void setEMail(String EMail) {
		this.EMail = EMail;
	}


	@Column(name="Establecimiento", length=200)
	public String getEstablecimiento() {
		return this.establecimiento;
	}

	public void setEstablecimiento(String establecimiento) {
		this.establecimiento = establecimiento;
	}


	//bi-directional many-to-one association to Provincia
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="IdProvincia", nullable=true)
	public Provincia getProvincia() {
		return this.provincia;
	}

	public void setProvincia(Provincia provincia) {
		this.provincia = provincia;
	}


	@Column(name="Localidad", length=200)
	public String getLocalidad() {
		return this.localidad;
	}

	public void setLocalidad(String localidad) {
		this.localidad = localidad;
	}


	@Column(name="Nombre", length=200)
	public String getNombre() {
		return this.nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}


	@Column(name="TipoExplotacion", length=1)
	public String getTipoExplotacion() {
		return this.tipoExplotacion;
	}

	public void setTipoExplotacion(String tipoExplotacion) {
		this.tipoExplotacion = tipoExplotacion;
	}

}