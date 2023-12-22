package com.hotelreservation;
import java.util.List;

public class clientService {
    private final clientDAO clientDAO;

    public clientService(clientDAO clientDAO) {
        this.clientDAO = clientDAO;
    }

    public client getClientById(Long id) {
        return clientDAO.findById(id);
    }

    public void saveClient(client client) {
        clientDAO.save(client);
    }

    public void updateClient(client client) {
        clientDAO.update(client);
    }

    public void deleteClient(client client) {
        clientDAO.delete(client);
    }

    public List<client> getAllClients() {
        return clientDAO.findAll();
    }

    public List<client> findClientsByEmail(String email) {
        return clientDAO.findByEmail(email);
    }

    public List<client> findClientsWithNoReservations() {
        return clientDAO.findClientsWithNoReservations();
    }
}
