package com.biogenesisbago.prode.service;

import java.util.List;

import com.biogenesisbago.prode.model.Respuesta;


public interface RespuestaService {
    public List<Respuesta> findAll();

    public void save(Respuesta respuesta);

    public void remove(int id);

    public Respuesta find(int id);
    
}
