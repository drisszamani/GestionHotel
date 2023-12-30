package com.hotelreservation;

import java.time.LocalDate;
import java.util.List;

public class ChambreService {
    private final ChambreDAO chambreDAO;

    public ChambreService(ChambreDAO chambreDAO) {
        this.chambreDAO = chambreDAO;
    }

    public Chambre getChambreById(Long id) {
        return chambreDAO.findById(id);
    }

    public void saveChambre(Chambre chambre) {
        chambreDAO.save(chambre);
    }

    public void updateChambre(Chambre chambre) {
        chambreDAO.update(chambre);
    }

    public void deleteChambre(Chambre chambre) {
        chambreDAO.delete(chambre);
    }

    public List<Chambre> getAllChambres() {
        return chambreDAO.findAll();
    }

    // Autres méthodes métier spécifiques aux chambres

    public List<Chambre> findAvailableChambres(LocalDate startDate, LocalDate endDate) {
        return chambreDAO.findAvailableChambres(startDate, endDate);
    }
}
