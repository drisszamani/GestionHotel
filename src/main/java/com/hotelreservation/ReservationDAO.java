package com.hotelreservation;

import com.hotelreservation.Reservation;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import java.time.LocalDate;
import java.util.List;

public class ReservationDAO {
    @PersistenceContext
    private EntityManager entityManager;

    public Reservation findById(Long id) {
        return entityManager.find(Reservation.class, id);
    }

    public void save(Reservation reservation) {
        entityManager.persist(reservation);
    }

    public void update(Reservation reservation) {
        entityManager.merge(reservation);
    }

    public void delete(Reservation reservation) {
        entityManager.remove(reservation);
    }

    public List<Reservation> findAll() {
        TypedQuery<Reservation> query = entityManager.createQuery("SELECT r FROM Reservation r", Reservation.class);
        return query.getResultList();
    }
    public List<Reservation> findByClient(Client client) {
        TypedQuery<Reservation> query = entityManager.createQuery("SELECT r FROM Reservation r WHERE r.client = :client", Reservation.class);
        query.setParameter("client", client);
        return query.getResultList();
    }

    public List<Reservation> findReservationsForDate(LocalDate date) {
        TypedQuery<Reservation> query = entityManager.createQuery("SELECT r FROM Reservation r WHERE :date BETWEEN r.dateArrivee AND r.dateDepart", Reservation.class);
        query.setParameter("date", date);
        return query.getResultList();
    }
}
