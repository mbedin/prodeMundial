package com.biogenesisbago.prode.service;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.transaction.annotation.Transactional;

import com.biogenesisbago.prode.model.Fase;



@Transactional
public class FaseServiceImpl implements FaseService {
    private EntityManager em;

    @PersistenceContext
    public void setEntityManager(EntityManager em) {
        this.em = em;
    }

    @SuppressWarnings("unchecked")
    public List<Fase> findAll() {
        Query query = getEntityManager().createQuery("select o FROM Fase o Order by o.id ASC");
        return query.getResultList();
    }

    public void save(Fase fase) {
        if (fase.getId() == 0) {
            // new
            em.persist(fase);
        } else {
            // update
            em.merge(fase);
        }
    }

    public void remove(int id) {
    	Fase fase = find(id);
        if (fase != null) {
            em.remove(fase);
        }
    }

    private EntityManager getEntityManager() {
        return em;
    }

    public Fase find(int id) {
        return em.find(Fase.class, id);
    }


}
