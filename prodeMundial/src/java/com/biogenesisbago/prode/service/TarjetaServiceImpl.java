package com.biogenesisbago.prode.service;

import java.util.Iterator;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.transaction.annotation.Transactional;

import com.biogenesisbago.prode.model.Cliente;
import com.biogenesisbago.prode.model.Grupo;
import com.biogenesisbago.prode.model.Partido;
import com.biogenesisbago.prode.model.Productor;
import com.biogenesisbago.prode.model.PronosticoClasificacion;
import com.biogenesisbago.prode.model.PronosticoPartido;
import com.biogenesisbago.prode.model.Tarjeta;


@Transactional
public class TarjetaServiceImpl implements TarjetaService {
    private EntityManager em;

    @PersistenceContext
    public void setEntityManager(EntityManager em) {
        this.em = em;
    }

    @SuppressWarnings("unchecked")
    public List<Tarjeta> findAll() {
        Query query = getEntityManager().createQuery("select o FROM Tarjeta o");
        return query.getResultList();
    }

    public void save(Tarjeta tarjeta) {
        if (tarjeta.getId() == 0) {
            // new
            em.persist(tarjeta);
        } else {
            // update
        	if (tarjeta.isTarjetaProductor())
        		em.merge(tarjeta.getProductor());
            em.merge(tarjeta);
        }
    }

    public void remove(int id) {
    	Tarjeta tarjeta = find(id);
        if (tarjeta != null) {
            em.remove(tarjeta);
        }
    }

    private EntityManager getEntityManager() {
        return em;
    }

    public Tarjeta find(int id) {
        return em.find(Tarjeta.class, id);
    }

    public List<Tarjeta> findTarjetasPorJugar(int idCliente, int numeroPagina, int tamanoPagina) {
        return findTarjetasPorCliente(idCliente, false, numeroPagina, tamanoPagina);
    }

    public List<Tarjeta> findTarjetasJugadas(int idCliente, int numeroPagina, int tamanoPagina ) {
        return findTarjetasPorCliente(idCliente, true, numeroPagina, tamanoPagina);
    }
    
    private List<Tarjeta> findTarjetasPorCliente(int idCliente, boolean estaCompleta, 
    		int numeroPagina, int tamanoPagina) {
    	Query query = getEntityManager().createQuery("select o FROM Tarjeta o where o.cliente.id = :idCliente and o.estaCompleta = :estaCompleta and o.activa = :activa ORDER BY o.id ASC");

    	if (tamanoPagina > 0) {
    		query.setFirstResult((numeroPagina - 1) * tamanoPagina);
    		query.setMaxResults(tamanoPagina);
    	}
        
        query.setParameter("idCliente", idCliente);
        query.setParameter("estaCompleta", estaCompleta);
        query.setParameter("activa", true);
        return query.getResultList();
    }

    public int countTarjetasPorJugar(int idCliente) {
        return countTarjetasPorCliente(idCliente, false);
    }

    public int countTarjetasJugadas(int idCliente) {
        return countTarjetasPorCliente(idCliente, true);
    }
    
    private int countTarjetasPorCliente(int idCliente, boolean estaCompleta) {
    	Query query = getEntityManager().createQuery("select count(o) FROM Tarjeta o where o.cliente.id = :idCliente and o.estaCompleta = :estaCompleta and o.activa = :activa ");
        query.setParameter("idCliente", idCliente);
        query.setParameter("estaCompleta", estaCompleta);
        query.setParameter("activa", true);
        int total = ((Long)query.getSingleResult()).intValue(); 
        return total;
    }
    
    public void createTarjetaVaciaFaseGrupo(int idCliente) {
    	// Obtengo Cliente
    	Cliente cliente = em.find(Cliente.class, idCliente);
    	
    	// Creo la tarjeta
    	Tarjeta tarjeta = new Tarjeta();
    	tarjeta.setCliente(cliente);
    	tarjeta.setActiva(true);
    	tarjeta.setEstaCompleta(false);
    	tarjeta.setEquipoCampeon(null);
    	tarjeta.setEquipoSubcampeon(null);
    	tarjeta.setTipoTarjeta(Tarjeta.TIPO_TARJETA_CLIENTE);
    	tarjeta.setProductor(null);
    	save(tarjeta);

    	Query query = getEntityManager().createQuery("select o FROM Grupo o");
    	List<Grupo> grupos = query.getResultList();
        
    	for (Iterator<Grupo> iterator = grupos.iterator(); iterator.hasNext();) {
    		Grupo grupo = (Grupo) iterator.next();

        	// Agrego los partidos
    		for (Iterator<Partido> iterator2 = grupo.getPartidos().iterator(); iterator2.hasNext();) {
				Partido partido = (Partido) iterator2.next();
	    		PronosticoPartido pp = new PronosticoPartido();
	    		pp.setPartido(partido);
	    		pp.setTarjeta(tarjeta);
	    		em.persist(pp);
			}
    		
        	// Agrego las clasificaciones de cada grupo
    		PronosticoClasificacion pc = new PronosticoClasificacion();
    		pc.setEquipoPrimero(null);
    		pc.setEquipoSegundo(null);
    		pc.setGrupo(grupo);
    		pc.setTarjeta(tarjeta);
    		em.persist(pc);
    	}
    	
    }

    public void createTarjetaVaciaProductor(int idCliente) {
    	// Obtengo Cliente
    	Cliente cliente = em.find(Cliente.class, idCliente);

    	//Creo el productor
    	Productor productor = new Productor();
    	productor.setProvincia(null);
    	em.persist(productor);
    	
    	// Creo la tarjeta
    	Tarjeta tarjeta = new Tarjeta();
    	tarjeta.setCliente(cliente);
    	tarjeta.setActiva(true);
    	tarjeta.setEstaCompleta(false);
    	tarjeta.setEquipoCampeon(null);
    	tarjeta.setEquipoSubcampeon(null);
    	tarjeta.setTipoTarjeta(Tarjeta.TIPO_TARJETA_PRODUCTOR);
    	tarjeta.setProductor(productor);
    	save(tarjeta);

    	Query query = getEntityManager().createQuery("select o FROM Grupo o");
    	List<Grupo> grupos = query.getResultList();
        
    	for (Iterator<Grupo> iterator = grupos.iterator(); iterator.hasNext();) {
    		Grupo grupo = (Grupo) iterator.next();

        	// Agrego los partidos
    		for (Iterator<Partido> iterator2 = grupo.getPartidos().iterator(); iterator2.hasNext();) {
				Partido partido = (Partido) iterator2.next();
	    		PronosticoPartido pp = new PronosticoPartido();
	    		pp.setPartido(partido);
	    		pp.setTarjeta(tarjeta);
	    		em.persist(pp);
			}
    		
    	}
    	
    }
    
    public void createTarjetaVaciaFaseOctavos(int idCliente) {
        // Obtengo Cliente
        Cliente cliente = em.find(Cliente.class, idCliente);
              // Valido si existe la tarjeta
        Query query = getEntityManager().createQuery("select t FROM Tarjeta t where t.tipoTarjeta = :tipoTarjeta and t.cliente.id = :idCliente and t.activa = :activa ");
        query.setParameter("idCliente", idCliente);
        query.setParameter("tipoTarjeta", Tarjeta.TIPO_TARJETA_OCTAVOS);
        query.setParameter("activa", true);
        List<Tarjeta> tarjetas = query.getResultList();
        Tarjeta tarjeta = new Tarjeta();
        if (tarjetas.size() > 0) {
            tarjeta = (Tarjeta)tarjetas.get(0);
        } else {
            // Creo la tarjeta
            tarjeta.setCliente(cliente);
            tarjeta.setActiva(true);
            tarjeta.setEstaCompleta(false);
            tarjeta.setEquipoCampeon(null);
            tarjeta.setEquipoSubcampeon(null);
            tarjeta.setTipoTarjeta(Tarjeta.TIPO_TARJETA_OCTAVOS);
            tarjeta.setProductor(null);
            save(tarjeta);
        }
              query = getEntityManager().createQuery("select o FROM Partido o where o.fase.id = 2");
        List<Partido> partidos = query.getResultList();
              // Agrego los partidos
        for (Iterator<Partido> iterator2 = partidos.iterator(); iterator2.hasNext();) {
            Partido partido = (Partido) iterator2.next();
            // Verifico si existe el partido
            Query query2 = getEntityManager().createQuery("select count(o) FROM PronosticoPartido o where o.tarjeta.id = :idTarjeta and o.partido.id = :idPartido ");
            query2.setParameter("idTarjeta", tarjeta.getId());
            query2.setParameter("idPartido", partido.getId());
            int total = ((Long)query2.getSingleResult()).intValue();
            if (total == 0 ) {
                PronosticoPartido pp = new PronosticoPartido();
                pp.setPartido(partido);
                pp.setTarjeta(tarjeta);
                //pp.estaCompleta
                em.persist(pp);
            }
        }
   } 
    
    public int countTarjetasConPremio(int idPartido, int golesL, int golesV){
    	Query query = getEntityManager().createQuery("select count(o) FROM PronosticoPartido o where o.partido.id = :idPartido and o.golesLocal = :golesL and o.golesVisitante = :golesV and o.partido.premioEnviado = 0 and o.tarjeta.estaCompleta = 1 ");
        query.setParameter("idPartido", idPartido);
        query.setParameter("golesL", golesL);
        query.setParameter("golesV", golesV);
        int total = ((Long)query.getSingleResult()).intValue(); 
        return total;
    }
    
    public List<Tarjeta> findTarjetasConPremioEnPartido(int idPartido){
    	Query query = getEntityManager().createQuery("select o.tarjeta FROM PronosticoPartido o where o.partido.id = :idPartido and o.golesLocal = o.partido.golesLocal and o.golesVisitante = o.partido.golesVisitante and o.tarjeta.estaCompleta = 1 ORDER BY o.tarjeta.id ASC");
    	query.setParameter("idPartido", idPartido);
        return query.getResultList();
    }
    
	public int countTarjetasConPremioClasificacion(int idGrupo, int idEquipoPrimero, int idEquipoSegundo) {
		Query query = getEntityManager().createQuery("select count(o) FROM PronosticoClasificacion o where o.grupo.id = :idGrupo and o.equipoPrimero.id = :idEquipoPrimero and o.equipoSegundo.id = :idEquipoSegundo and o.grupo.premioEnviado = 0 and o.tarjeta.estaCompleta = 1");
        query.setParameter("idGrupo", idGrupo);
        query.setParameter("idEquipoPrimero", idEquipoPrimero);
        query.setParameter("idEquipoSegundo", idEquipoSegundo);
        int total = ((Long)query.getSingleResult()).intValue(); 
        return total;
	}

	
	public List<Tarjeta> findTarjetasConPremioPorClasificacion(int idGrupo) {
		Query query = getEntityManager().createQuery("select o.tarjeta FROM PronosticoClasificacion o where o.grupo.id = :idGrupo and o.equipoPrimero.id = o.grupo.equipoPrimero.id and o.equipoSegundo.id = o.equipoSegundo.id and o.tarjeta.estaCompleta = 1  ORDER BY o.tarjeta.id ASC");
    	query.setParameter("idGrupo", idGrupo);
        return query.getResultList();
	}

	
	public List<Tarjeta> findTarjetasPorPuntos() {
		String strQuery = "SELECT t.Id, t.IdCliente, t.TipoTarjeta, t.EstaCompleta, t.FechaModificacion, " +
		"t.Activa, t.IdEquipoCampeon, t.IdEquipoSubcampeon, t.MejorJugador,t.Goleador, " + 
		"sum(pp.Puntos) as PuntosCampeon, " +
		"t.IdProductor, t.PuntosSubcampeon, t.PuntosGoleador, t.PuntosMejorJugador " +
		"FROM pronosticospartidos pp, tarjetasprode t " +
		"WHERE t.Id = pp.IdTarjetaProde AND t.EstaCompleta = :estaCompleta AND t.Activa = :activa  " +   
		"GROUP BY pp.IdTarjetaprode, t.IdCliente "+
		"ORDER BY sum(pp.puntos) DESC ";
		Query query = em.createNativeQuery(strQuery, Tarjeta.class);
		query.setParameter("estaCompleta", true);
		query.setParameter("activa", true);
		return query.getResultList();
		 
	}

	
	public Tarjeta findTarjetaCliente(int id) {
		String strQuery = "SELECT t.Id, t.IdCliente, t.TipoTarjeta, t.EstaCompleta, t.FechaModificacion, " +
		"t.Activa, t.IdEquipoCampeon, t.IdEquipoSubcampeon, t.MejorJugador,t.Goleador, " + 
		"sum(pp.Puntos) as PuntosCampeon, " +
		"t.IdProductor, t.PuntosSubcampeon, t.PuntosGoleador, t.PuntosMejorJugador " +
		"FROM pronosticospartidos pp, tarjetasprode t " +
		"WHERE t.Id = pp.IdTarjetaProde AND t.EstaCompleta = :estaCompleta AND t.IdCliente = :idCliente and t.Activa = :activa and t.Tipotarjeta = :tipo " +   
		"GROUP BY pp.IdTarjetaprode, t.IdCliente "+
		"ORDER BY sum(pp.puntos) DESC ";
	Query query = em.createNativeQuery(strQuery, Tarjeta.class);
	query.setParameter("estaCompleta", true);
	query.setParameter("activa", true);
	query.setParameter("tipo", 0);
	query.setParameter("idCliente", id);
	
	List<Tarjeta> list = query.getResultList();
	
	if (list.isEmpty()) {
		return null;
	}
	
	return list.get(0);
	}

	
	public void createTarjetaVaciaFaseCuartos(int idCliente) {
		 // Obtengo Cliente
      Cliente cliente = em.find(Cliente.class, idCliente);
      
      // Valido si existe la tarjeta
      
      Query query = getEntityManager().createQuery("select t FROM Tarjeta t where t.tipoTarjeta = :tipoTarjeta and t.cliente.id = :idCliente and t.activa = :activa ");
      query.setParameter("idCliente", idCliente);
      query.setParameter("tipoTarjeta", Tarjeta.TIPO_TARJETA_CUARTOS);
      query.setParameter("activa", true);
      List<Tarjeta> tarjetas = query.getResultList();
      Tarjeta tarjeta = new Tarjeta();
      if (tarjetas.size() > 0) {
          tarjeta = (Tarjeta)tarjetas.get(0);
      } else {
          // Creo la tarjeta
          tarjeta.setCliente(cliente);
          tarjeta.setActiva(true);
          tarjeta.setEstaCompleta(false);
          tarjeta.setEquipoCampeon(null);
          tarjeta.setEquipoSubcampeon(null);
          tarjeta.setTipoTarjeta(Tarjeta.TIPO_TARJETA_CUARTOS);
          tarjeta.setProductor(null);
          save(tarjeta);
      }
            query = getEntityManager().createQuery("select o FROM Partido o where o.fase.id = 3");
      List<Partido> partidos = query.getResultList();
            // Agrego los partidos
      for (Iterator<Partido> iterator2 = partidos.iterator(); iterator2.hasNext();) {
          Partido partido = (Partido) iterator2.next();
          // Verifico si existe el partido
          Query query2 = getEntityManager().createQuery("select count(o) FROM PronosticoPartido o where o.tarjeta.id = :idTarjeta and o.partido.id = :idPartido ");
          query2.setParameter("idTarjeta", tarjeta.getId());
          query2.setParameter("idPartido", partido.getId());
          int total = ((Long)query2.getSingleResult()).intValue();
          if (total == 0 ) {
              PronosticoPartido pp = new PronosticoPartido();
              pp.setPartido(partido);
              pp.setTarjeta(tarjeta);
              //pp.estaCompleta
              em.persist(pp);
          }
      }
	}

	public void createTarjetaVaciaFaseSemi(int idCliente) {
		 // Obtengo Cliente
      Cliente cliente = em.find(Cliente.class, idCliente);
            // Valido si existe la tarjeta
      Query query = getEntityManager().createQuery("select t FROM Tarjeta t where t.tipoTarjeta = :tipoTarjeta and t.cliente.id = :idCliente and t.activa = :activa ");
      query.setParameter("idCliente", idCliente);
      query.setParameter("tipoTarjeta", Tarjeta.TIPO_TARJETA_SEMI);
      query.setParameter("activa", true);
      List<Tarjeta> tarjetas = query.getResultList();
      Tarjeta tarjeta = new Tarjeta();
      if (tarjetas.size() > 0) {
          tarjeta = (Tarjeta)tarjetas.get(0);
      } else {
          // Creo la tarjeta
          tarjeta.setCliente(cliente);
          tarjeta.setActiva(true);
          tarjeta.setEstaCompleta(false);
          tarjeta.setEquipoCampeon(null);
          tarjeta.setEquipoSubcampeon(null);
          tarjeta.setTipoTarjeta(Tarjeta.TIPO_TARJETA_SEMI);
          tarjeta.setProductor(null);
          save(tarjeta);
      }
            query = getEntityManager().createQuery("select o FROM Partido o where o.fase.id = 4");
      List<Partido> partidos = query.getResultList();
            // Agrego los partidos
      for (Iterator<Partido> iterator2 = partidos.iterator(); iterator2.hasNext();) {
          Partido partido = (Partido) iterator2.next();
          // Verifico si existe el partido
          Query query2 = getEntityManager().createQuery("select count(o) FROM PronosticoPartido o where o.tarjeta.id = :idTarjeta and o.partido.id = :idPartido ");
          query2.setParameter("idTarjeta", tarjeta.getId());
          query2.setParameter("idPartido", partido.getId());
          int total = ((Long)query2.getSingleResult()).intValue();
          if (total == 0 ) {
              PronosticoPartido pp = new PronosticoPartido();
              pp.setPartido(partido);
              pp.setTarjeta(tarjeta);
              //pp.estaCompleta
              em.persist(pp);
          }
      }
	}

	public void createTarjetaVaciaFaseFinal(int idCliente) {
		 // Obtengo Cliente
      Cliente cliente = em.find(Cliente.class, idCliente);
            // Valido si existe la tarjeta
      Query query = getEntityManager().createQuery("select t FROM Tarjeta t where t.tipoTarjeta = :tipoTarjeta and t.cliente.id = :idCliente and t.activa = :activa ");
      query.setParameter("idCliente", idCliente);
      query.setParameter("tipoTarjeta", Tarjeta.TIPO_TARJETA_FINAL);
      query.setParameter("activa", true);
      List<Tarjeta> tarjetas = query.getResultList();
      Tarjeta tarjeta = new Tarjeta();
      if (tarjetas.size() > 0) {
          tarjeta = (Tarjeta)tarjetas.get(0);
      } else {
          // Creo la tarjeta
          tarjeta.setCliente(cliente);
          tarjeta.setActiva(true);
          tarjeta.setEstaCompleta(false);
          tarjeta.setEquipoCampeon(null);
          tarjeta.setEquipoSubcampeon(null);
          tarjeta.setTipoTarjeta(Tarjeta.TIPO_TARJETA_FINAL);
          tarjeta.setProductor(null);
          save(tarjeta);
      }
            query = getEntityManager().createQuery("select o FROM Partido o where o.fase.id = 5 ");
      List<Partido> partidos = query.getResultList();
            // Agrego los partidos
      for (Iterator<Partido> iterator2 = partidos.iterator(); iterator2.hasNext();) {
          Partido partido = (Partido) iterator2.next();
          // Verifico si existe el partido
          Query query2 = getEntityManager().createQuery("select count(o) FROM PronosticoPartido o where o.tarjeta.id = :idTarjeta and o.partido.id = :idPartido ");
          query2.setParameter("idTarjeta", tarjeta.getId());
          query2.setParameter("idPartido", partido.getId());
          int total = ((Long)query2.getSingleResult()).intValue();
          if (total == 0 ) {
              PronosticoPartido pp = new PronosticoPartido();
              pp.setPartido(partido);
              pp.setTarjeta(tarjeta);
              //pp.estaCompleta
              em.persist(pp);
          }
      }
		
	} 


    
}
