package com.hotelreservation;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import java.util.List;

public class employeDAO {
    @PersistenceContext
    private EntityManager entityManager;

    public employe findById(Long id) {
        return entityManager.find(employe.class, id);
    }

    public void save(employe employe) {
        entityManager.persist(employe);
    }

    public void update(employe employe) {
        entityManager.merge(employe);
    }

    public void delete(employe employe) {
        entityManager.remove(employe);
    }

    public List<employe> findAll() {
        TypedQuery<employe> query = entityManager.createQuery("SELECT e FROM employe e", employe.class);
        return query.getResultList();
    }

    //autres methodes specifiques
    public List<employe> findByPoste(String poste) {
        TypedQuery<employe> query = entityManager.createQuery("SELECT e FROM employe e WHERE e.poste = :poste", employe.class);
        query.setParameter("poste", poste);
        return query.getResultList();
    }
}
