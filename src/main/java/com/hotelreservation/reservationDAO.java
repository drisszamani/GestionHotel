package com.hotelreservation;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import java.time.LocalDate;
import java.util.List;

public class reservationDAO {
    @PersistenceContext
    private EntityManager entityManager;

    public reservation findById(Long id) {
        return entityManager.find(reservation.class, id);
    }

    public void save(reservation reservation) {
        entityManager.persist(reservation);
    }

    public void update(reservation reservation) {
        entityManager.merge(reservation);
    }

    public void delete(reservation reservation) {
        entityManager.remove(reservation);
    }

    public List<reservation> findAll() {
        TypedQuery<reservation> query = entityManager.createQuery("SELECT r FROM reservation r", reservation.class);
        return query.getResultList();
    }

    //autres methodes specifiques
    public List<reservation> findByClient(client client) {
        TypedQuery<reservation> query = entityManager.createQuery("SELECT r FROM reservation r WHERE r.client = :client", reservation.class);
        query.setParameter("client", client);
        return query.getResultList();
    }

    public List<reservation> findReservationsForDate(LocalDate date) {
        TypedQuery<reservation> query = entityManager.createQuery("SELECT r FROM reservation r WHERE :date BETWEEN r.dateArrivee AND r.dateDepart", reservation.class);
        query.setParameter("date", date);
        return query.getResultList();
    }
}
