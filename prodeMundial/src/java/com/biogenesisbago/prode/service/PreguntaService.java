package com.biogenesisbago.prode.service;

import java.util.Date;
import java.util.List;

import com.biogenesisbago.prode.model.Pregunta;


public interface PreguntaService {
    public List<Pregunta> findAll();

    public void save(Pregunta pregunta);

    public void remove(int id);

    public Pregunta find(int id);
    
    public Pregunta findPreguntaVigente(int puntos);
    
    public int countPreguntas();
    
    public List<Pregunta> findPreguntas(int numeroPagina, int tamanoPagina);
    
    public boolean isPreguntaUsada(int idPregunta);
    
    public boolean validaRangoFechas(int puntos, Date fechaPublicacion, Date fechaFinPublicacion);
    
    public boolean validaRangoFechasModificacion(int idPreg, int puntos, Date fechaPublicacion,Date fechaFinPublicacion);

}
