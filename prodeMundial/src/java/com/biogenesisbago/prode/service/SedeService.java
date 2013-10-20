package com.biogenesisbago.prode.service;

import java.util.List;

import com.biogenesisbago.prode.model.Sede;


public interface SedeService {
    
	public List<Sede> findAll();

    public void save(Sede sede);

    public void remove(int id);

    public Sede find(int id);
    
}
