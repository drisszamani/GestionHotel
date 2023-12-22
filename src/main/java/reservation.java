import javax.persistence.*;
import java.time.LocalDate;

@Entity
@Table(name = "reservations")
public class reservation {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "client_id")
    private client client;

    @ManyToOne
    @JoinColumn(name = "chambre_id")
    private chambre chambre;

    @Column(name = "date_arrivee")
    private LocalDate dateArrivee;

    @Column(name = "date_depart")
    private LocalDate dateDepart;

    // Constructeurs
    public reservation() {}

    // Getters et setters
    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }

    public client getClient() { return client; }
    public void setClient(client client) { this.client = client; }

    public chambre getchambre() { return chambre; }
    public void setchambre(chambre chambre) { this.chambre = chambre; }

    public LocalDate getDateArrivee() { return dateArrivee; }
    public void setDateArrivee(LocalDate dateArrivee) { this.dateArrivee = dateArrivee; }

    public LocalDate getDateDepart() { return dateDepart; }
    public void setDateDepart(LocalDate dateDepart) { this.dateDepart = dateDepart; }
}
