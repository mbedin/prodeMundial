package com.biogenesisbago.prode.service;

import java.util.List;

import com.biogenesisbago.prode.model.Equipo;


public interface EquipoService {
    public List<Equipo> findAll();

    public void save(Equipo equipo);

    public void remove(int id);

    public Equipo find(int id);
    
}
