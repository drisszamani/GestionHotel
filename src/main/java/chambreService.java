import java.time.LocalDate;
import java.util.List;

public class chambreService {
    private final chambreDAO chambreDAO;

    public chambreService(chambreDAO chambreDAO) {
        this.chambreDAO = chambreDAO;
    }

    public chambre getChambreById(Long id) {
        return chambreDAO.findById(id);
    }

    public void saveChambre(chambre chambre) {
        chambreDAO.save(chambre);
    }

    public void updatechambre(chambre chambre) {
        chambreDAO.update(chambre);
    }

    public void deleteChambre(chambre chambre) {
        chambreDAO.delete(chambre);
    }

    public List<chambre> getAllChambres() {
        return chambreDAO.findAll();
    }

    // Autres méthodes métier spécifiques aux chambres

    public List<chambre> findAvailableChambres(LocalDate startDate, LocalDate endDate) {
        return chambreDAO.findAvailableChambres(startDate, endDate);
    }
}
