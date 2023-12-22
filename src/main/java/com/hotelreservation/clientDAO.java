package com.hotelreservation;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import java.util.List;

public class clientDAO {
    @PersistenceContext
    private EntityManager entityManager;

    public client findById(Long id) {
        return entityManager.find(client.class, id);
    }

    public void save(client client) {
        entityManager.persist(client);
    }

    public void update(client client) {
        entityManager.merge(client);
    }

    public void delete(client client) {
        entityManager.remove(client);
    }

    public List<client> findAll() {
        TypedQuery<client> query = entityManager.createQuery("SELECT c FROM client c", client.class);
        return query.getResultList();
    }


    //methodes specifiques
    public List<client> findByEmail(String email) {
        TypedQuery<client> query = entityManager.createQuery("SELECT c FROM client c WHERE c.email = :email", client.class);
        query.setParameter("email", email);
        return query.getResultList();
    }

    public List<client> findClientsWithNoReservations() {
        return entityManager.createQuery(
                        "SELECT c FROM client c WHERE c.id NOT IN (SELECT r.client.id FROM reservation r)", client.class)
                .getResultList();
    }


}
