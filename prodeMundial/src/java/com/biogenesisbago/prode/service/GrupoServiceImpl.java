package com.biogenesisbago.prode.service;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.transaction.annotation.Transactional;

import com.biogenesisbago.prode.model.Grupo;


@Transactional
public class GrupoServiceImpl implements GrupoService {
    private EntityManager em;

    @PersistenceContext
    public void setEntityManager(EntityManager em) {
        this.em = em;
    }

    @SuppressWarnings("unchecked")
    public List<Grupo> findAll() {
        Query query = getEntityManager().createQuery("select o FROM Grupo o Order by o.orden");
        return query.getResultList();
    }

    public void save(Grupo grupo) {
        if (grupo.getId() == 0) {
            // new
            em.persist(grupo);
        } else {
            // update
            em.merge(grupo);
        }
    }

    public void remove(int id) {
    	Grupo grupo = find(id);
        if (grupo != null) {
            em.remove(grupo);
        }
    }

    private EntityManager getEntityManager() {
        return em;
    }

    public Grupo find(int id) {
        return em.find(Grupo.class, id);
    }


}
