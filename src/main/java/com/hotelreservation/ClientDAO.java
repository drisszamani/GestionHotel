package com.hotelreservation;

import com.hotelreservation.Client;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import java.util.List;

public class ClientDAO {
    @PersistenceContext
    private EntityManager entityManager;

    public Client findById(Long id) {
        return entityManager.find(Client.class, id);
    }

    public void save(Client client) {
        entityManager.persist(client);
    }

    public void update(Client client) {
        entityManager.merge(client);
    }

    public void delete(Client client) {
        entityManager.remove(client);
    }

    public List<Client> findAll() {
        TypedQuery<Client> query = entityManager.createQuery("SELECT c FROM clients c", Client.class);
        return query.getResultList();
    }

    public List<Client> findByEmail(String email) {
        TypedQuery<Client> query = entityManager.createQuery("SELECT c FROM clients c WHERE c.email = :email", Client.class);
        query.setParameter("email", email);
        return query.getResultList();
    }

    public List<Client> findClientsWithNoReservations() {
        return entityManager.createQuery(
                        "SELECT c FROM clients c WHERE c.id NOT IN (SELECT r.clients.id FROM reservations r)", Client.class)
                .getResultList();
    }

}
