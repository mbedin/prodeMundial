package com.biogenesisbago.prode.model;

import java.io.Serializable;

public class PasswordAdapter implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2066341862394930151L;
	
	private Cliente cliente = new Cliente();
	private String password = "";
	private String repeticion = "";

	
    public Cliente getCliente() {
		return cliente;
	}

	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRepeticion() {
		return repeticion;
	}

	public void setRepeticion(String repeticion) {
		this.repeticion = repeticion;
	}

	public PasswordAdapter() {

    }
	
}