package com.biogenesisbago.prode.service;

import java.util.List;

import com.biogenesisbago.prode.model.Fase;



public interface FaseService {
    public List<Fase> findAll();

    public void save(Fase fase);

    public void remove(int id);

    public Fase find(int id);
    
}
