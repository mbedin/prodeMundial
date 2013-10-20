package com.biogenesisbago.prode.service;

import java.util.List;

import com.biogenesisbago.prode.model.Cliente;


public interface ClienteService {
    public List<Cliente> findAll();

    public void save(Cliente cliente);

    public void remove(int id);

    public Cliente find(int id);
    
    public Cliente login(String usuario, String password);
    
    public List<Cliente> findClientesConNuevasTarjetas();
    
    public List<Cliente> findClientesSinTarjetas();
    
    public int ObtenerPuntosTriviaPorCliente(Cliente cliente);
    
    public Cliente findClienteByUsuario(String usuario);

    public List<Cliente> findClientesProductor();
    
    public List<Cliente> findClientesByAceptoBases(Boolean aceptoBases);

    public List<Cliente> findClientesReporteTarjetas();
    
    public List<Cliente> findClientesPuntosTrivia();
    
    public List<Cliente> findClientesReporteGeneral();

	public List<Cliente> findClientesConNuevasTarjetasOctavos();

	public List<Cliente> findClientesPorPuntos();
	
	public Cliente findPuntosCliente(int idCliente );

	public List<Cliente> findClientesPuntosFinales();
    
}
