package com.biogenesisbago.prode.service;

import java.util.List;

import com.biogenesisbago.prode.model.Grupo;


public interface GrupoService {
    public List<Grupo> findAll();

    public void save(Grupo grupo);

    public void remove(int id);

    public Grupo find(int id);
    
}
