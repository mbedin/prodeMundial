package com.biogenesisbago.prode.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the pronosticosmundial database table.
 * 
 */
@Entity
@Table(name="pronosticosmundial")
public class PronosticoMundial implements Serializable {
	private static final long serialVersionUID = 1L;
	private int id;
	private String goleador;
	private String mejorJugador;
	private int puntosCampeon;
	private int puntosGoleador;
	private int puntosMejorJugador;
	private int puntosSubcampeon;
	private Equipo equipoCampeon;
	private Equipo equipoSubcampeon;
	private Tarjeta tarjeta;

    public PronosticoMundial() {
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


	@Column(name="Goleador", nullable=false, length=200)
	public String getGoleador() {
		return this.goleador;
	}

	public void setGoleador(String goleador) {
		this.goleador = goleador;
	}


	@Column(name="MejorJugador", nullable=false, length=200)
	public String getMejorJugador() {
		return this.mejorJugador;
	}

	public void setMejorJugador(String mejorJugador) {
		this.mejorJugador = mejorJugador;
	}


	@Column(name="PuntosCampeon")
	public int getPuntosCampeon() {
		return this.puntosCampeon;
	}

	public void setPuntosCampeon(int puntosCampeon) {
		this.puntosCampeon = puntosCampeon;
	}


	@Column(name="PuntosGoleador")
	public int getPuntosGoleador() {
		return this.puntosGoleador;
	}

	public void setPuntosGoleador(int puntosGoleador) {
		this.puntosGoleador = puntosGoleador;
	}


	@Column(name="PuntosMejorJugador")
	public int getPuntosMejorJugador() {
		return this.puntosMejorJugador;
	}

	public void setPuntosMejorJugador(int puntosMejorJugador) {
		this.puntosMejorJugador = puntosMejorJugador;
	}


	@Column(name="PuntosSubcampeon")
	public int getPuntosSubcampeon() {
		return this.puntosSubcampeon;
	}

	public void setPuntosSubcampeon(int puntosSubcampeon) {
		this.puntosSubcampeon = puntosSubcampeon;
	}


	//bi-directional many-to-one association to Equipo
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="IdEquipoCampeon", nullable=false)
	public Equipo getEquipoCampeon() {
		return this.equipoCampeon;
	}

	public void setEquipoCampeon(Equipo equipoCampeon) {
		this.equipoCampeon = equipoCampeon;
	}
	

	//bi-directional many-to-one association to Equipo
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="IdEquipoSubcampeon", nullable=false)
	public Equipo getEquipoSubcampeon() {
		return this.equipoSubcampeon;
	}

	public void setEquipoSubcampeon(Equipo equipoSubcampeon) {
		this.equipoSubcampeon = equipoSubcampeon;
	}
	

	//bi-directional many-to-one association to Tarjeta
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="IdTarjetaProde", nullable=false)
	public Tarjeta getTarjeta() {
		return this.tarjeta;
	}

	public void setTarjeta(Tarjeta tarjeta) {
		this.tarjeta = tarjeta;
	}
	
}