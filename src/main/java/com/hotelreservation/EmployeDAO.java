package com.hotelreservation;

import com.hotelreservation.Employe;
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
        TypedQuery<Employe> query = entityManager.createQuery("SELECT e FROM Employe e", Employe.class);
        return query.getResultList();
    }
    public List<Employe> findByPoste(String poste) {
        TypedQuery<Employe> query = entityManager.createQuery("SELECT e FROM Employe e WHERE e.poste = :poste", Employe.class);
        query.setParameter("poste", poste);
        return query.getResultList();
    }
}
