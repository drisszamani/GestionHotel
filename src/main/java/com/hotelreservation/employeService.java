package com.hotelreservation;
import java.util.List;

public class employeService {
    private final employeDAO employeDAO;

    public employeService(employeDAO employeDAO) {
        this.employeDAO = employeDAO;
    }

    public employe getEmployeById(Long id) {
        return employeDAO.findById(id);
    }

    public void saveEmploye(employe employe) {
        employeDAO.save(employe);
    }

    public void updateEmploye(employe employe) {
        employeDAO.update(employe);
    }

    public void deleteEmploye(employe employe) {
        employeDAO.delete(employe);
    }

    public List<employe> getAllEmployes() {
        return employeDAO.findAll();
    }

    // Autres méthodes métier spécifiques aux employés

    public List<employe> findEmployesByPoste(String poste) {
        return employeDAO.findByPoste(poste);
    }
}
