package com.hotelreservation;

import java.util.List;

public class ClientService {
    private final ClientDAO clientDAO;

    public ClientService(ClientDAO clientDAO) {
        this.clientDAO = clientDAO;
    }

    public Client getClientById(Long id) {
        return clientDAO.findById(id);
    }

    public void saveClient(Client client) {
        clientDAO.save(client);
    }

    public void updateClient(Client client) {
        clientDAO.update(client);
    }

    public void deleteClient(Client client) {
        clientDAO.delete(client);
    }

    public List<Client> getAllClients() {
        return clientDAO.findAll();
    }
    //autres methodes metier specifiques :
    public List<Client> findClientsByEmail(String email) {
        return clientDAO.findByEmail(email);
    }

    public List<Client> findClientsWithNoReservations() {
        return clientDAO.findClientsWithNoReservations();
    }
}
