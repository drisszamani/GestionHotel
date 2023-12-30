package com.hotelreservation;

import java.util.List;

public class EmployeService {
    private final EmployeDAO employeDAO;

    public EmployeService(EmployeDAO employeDAO) {
        this.employeDAO = employeDAO;
    }

    public Employe getEmployeById(Long id) {
        return employeDAO.findById(id);
    }

    public void saveEmploye(Employe employe) {
        employeDAO.save(employe);
    }

    public void updateEmploye(Employe employe) {
        employeDAO.update(employe);
    }

    public void deleteEmploye(Employe employe) {
        employeDAO.delete(employe);
    }

    public List<Employe> getAllEmployes() {
        return employeDAO.findAll();
    }

    // Autres méthodes métier spécifiques aux employés
    public List<Employe> findEmployesByPoste(String poste) {
        return employeDAO.findByPoste(poste);
    }
}
