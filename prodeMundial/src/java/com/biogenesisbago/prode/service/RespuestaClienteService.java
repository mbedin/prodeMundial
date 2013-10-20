package com.biogenesisbago.prode.service;

import java.util.List;

import com.biogenesisbago.prode.model.Cliente;
import com.biogenesisbago.prode.model.RespuestaCliente;


public interface RespuestaClienteService {
    public List<RespuestaCliente> findAll();

    public void save(RespuestaCliente respuestaCliente);

    public void remove(int id);

    public RespuestaCliente find(int id);
    
    public RespuestaCliente findRespuestaCliente(Cliente cliente);
    
    public boolean isTriviaJugada(Cliente cliente);
    
}
