package com.biogenesisbago.prode.service;

import java.util.List;

import com.biogenesisbago.prode.model.PronosticoPartido;;




public interface PronosticoPartidoService {
    
	public List<PronosticoPartido> findAll();

    public void save(PronosticoPartido pronosticoPartido);

    public void remove(int id);

    public PronosticoPartido find(int id);

	public List<PronosticoPartido> findPronosticosPorIdPartido(int idPartido);
    
   
    
}
