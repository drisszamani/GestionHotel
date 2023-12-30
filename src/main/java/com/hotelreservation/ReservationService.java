package com.hotelreservation;

import java.time.LocalDate;
import java.util.List;

public class ReservationService {
    private final ReservationDAO reservationDAO;

    public ReservationService(ReservationDAO reservationDAO) {
        this.reservationDAO = reservationDAO;
    }

    public Reservation getReservationById(Long id) {
        return reservationDAO.findById(id);
    }

    public void saveReservation(Reservation reservation) {
        reservationDAO.save(reservation);
    }

    public void updateReservation(Reservation reservation) {
        reservationDAO.update(reservation);
    }

    public void deleteReservation(Reservation reservation) {
        reservationDAO.delete(reservation);
    }

    public List<Reservation> getAllReservations() {
        return reservationDAO.findAll();
    }

    // Autres méthodes métier spécifiques aux réservations
    public List<Reservation> findReservationsByClient(Client client) {
        return reservationDAO.findByClient(client);
    }

    public List<Reservation> findReservationsForToday() {
        return reservationDAO.findReservationsForDate(LocalDate.now());
    }
}
