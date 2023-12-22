package com.hotelreservation;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import java.time.LocalDate;
import java.util.List;

public class chambreDAO {
    @PersistenceContext
    private EntityManager entityManager;

    public chambre findById(Long id) {
        return entityManager.find(chambre.class, id);
    }

    public void save(chambre chambre) {
        entityManager.persist(chambre);
    }

    public void update(chambre chambre) {
        entityManager.merge(chambre);
    }

    public void delete(chambre chambre) {
        entityManager.remove(chambre);
    }

    public List<chambre> findAll() {
        TypedQuery<chambre> query = entityManager.createQuery("SELECT ch FROM chambre ch", chambre.class);
        return query.getResultList();
    }

    //autres methodes specifiques
    public List<chambre> findAvailableChambres(LocalDate startDate, LocalDate endDate) {
        return entityManager.createQuery(
                        "SELECT ch FROM chambre ch WHERE ch.id NOT IN (SELECT r.chambre.id FROM reservation r WHERE r.dateArrivee <= :endDate AND r.dateDepart >= :startDate)", chambre.class)
                .setParameter("startDate", startDate)
                .setParameter("endDate", endDate)
                .getResultList();
    }
}
