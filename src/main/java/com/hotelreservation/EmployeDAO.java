package com.hotelreservation;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import java.util.List;

public class EmployeDAO {
    @PersistenceContext
    private EntityManager entityManager;

    public Employe findById(Long id) {
        return entityManager.find(Employe.class, id);
    }

    public void save(Employe employe) {
        entityManager.persist(employe);
    }

    public void update(Employe employe) {
        entityManager.merge(employe);
    }

    public void delete(Employe employe) {
        entityManager.remove(employe);
    }

    public List<Employe> findAll() {
        TypedQuery<Employe> query = entityManager.createQuery("SELECT u FROM utilisateurs u", Employe.class);
        return query.getResultList();
    }
    public List<Employe> findByPoste(String poste) {
        TypedQuery<Employe> query = entityManager.createQuery("SELECT u FROM utilisateurs u WHERE u.poste = :poste", Employe.class);
        query.setParameter("poste", poste);
        return query.getResultList();
    }
}
