package com.hotelreservation;

import com.hotelreservation.Chambre;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import java.time.LocalDate;
import java.util.List;

public class ChambreDAO {
    @PersistenceContext
    private EntityManager entityManager;

    public Chambre findById(Long id) {
        return entityManager.find(Chambre.class, id);
    }

    public void save(Chambre chambre) {
        entityManager.persist(chambre);
    }

    public void update(Chambre chambre) {
        entityManager.merge(chambre);
    }

    public void delete(Chambre chambre) {
        entityManager.remove(chambre);
    }

    public List<Chambre> findAll() {
        TypedQuery<Chambre> query = entityManager.createQuery("SELECT ch FROM Chambre ch", Chambre.class);
        return query.getResultList();
    }

    public List<Chambre> findAvailableChambres(LocalDate startDate, LocalDate endDate) {
        return entityManager.createQuery(
                        "SELECT ch FROM Chambre ch WHERE ch.id NOT IN (SELECT r.chambre.id FROM Reservation r WHERE r.dateArrivee <= :endDate AND r.dateDepart >= :startDate)", Chambre.class)
                .setParameter("startDate", startDate)
                .setParameter("endDate", endDate)
                .getResultList();
    }
}
