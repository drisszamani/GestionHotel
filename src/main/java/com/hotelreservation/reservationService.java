package com.hotelreservation;
import java.time.LocalDate;
import java.util.List;

public class reservationService {
    private final reservationDAO reservationDAO;

    public reservationService(reservationDAO reservationDAO) {
        this.reservationDAO = reservationDAO;
    }

    public reservation getReservationById(Long id) {
        return reservationDAO.findById(id);
    }

    public void saveReservation(reservation reservation) {
        reservationDAO.save(reservation);
    }

    public void updateReservation(reservation reservation) {
        reservationDAO.update(reservation);
    }

    public void deleteReservation(reservation reservation) {
        reservationDAO.delete(reservation);
    }

    public List<reservation> getAllReservations() {
        return reservationDAO.findAll();
    }

    // Autres méthodes métier spécifiques aux réservations

    public List<reservation> findReservationsByClient(client client) {
        return reservationDAO.findByClient(client);
    }

    public List<reservation> findReservationsForToday() {
        return reservationDAO.findReservationsForDate(LocalDate.now());
    }
}
