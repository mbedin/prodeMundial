package com.biogenesisbago.prode.service;

import java.util.List;

import com.biogenesisbago.prode.model.Partido;



public interface PartidoService {
    
	public List<Partido> findAll();

    public void save(Partido partido);

    public void remove(int id);

    public Partido find(int id);
    
    public int countPartidos();
    
    public List<Partido> findPartidos(int numeroPagina, int tamanoPagina);
    
}
