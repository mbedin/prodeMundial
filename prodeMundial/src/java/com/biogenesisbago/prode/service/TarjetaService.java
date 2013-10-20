package com.biogenesisbago.prode.service;

import java.util.List;

import com.biogenesisbago.prode.model.Tarjeta;


public interface TarjetaService {
    public List<Tarjeta> findAll();

    public void save(Tarjeta tarjeta);

    public void remove(int id);

    public Tarjeta find(int id);
    
    public List<Tarjeta> findTarjetasPorJugar(int idCliente, int numeroPagina, int tamanoPagina);
    
    public List<Tarjeta> findTarjetasJugadas(int idCliente, int numeroPagina, int tamanoPagina);
    
    public int countTarjetasPorJugar(int idCliente);
    
    public int countTarjetasJugadas(int idCliente);
    
    public void createTarjetaVaciaFaseGrupo(int idCliente);
    
    public void createTarjetaVaciaFaseOctavos(int idCliente);
    
    public void createTarjetaVaciaFaseCuartos(int id);

	public void createTarjetaVaciaFaseSemi(int id);

	public void createTarjetaVaciaFaseFinal(int id);
    
    public void createTarjetaVaciaProductor(int idCliente);
    
    public int countTarjetasConPremio(int idPartido, int golesL, int golesV);
    
    public List<Tarjeta> findTarjetasConPremioEnPartido(int idPartido);
    
    public int countTarjetasConPremioClasificacion(int idGrupo, int idEquipoPrimero, int idEquipoSegundo);
    
    public List<Tarjeta> findTarjetasConPremioPorClasificacion(int idGrupo);

	public List<Tarjeta> findTarjetasPorPuntos();

	public Tarjeta findTarjetaCliente(int id);

}
