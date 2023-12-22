import javax.persistence.*;

@Entity
@Table(name = "employes")
public class employe {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "nom")
    private String nom;

    @Column(name = "poste")
    private String poste;

    // Constructeurs
    public employe() {}

    // Getters et setters
    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }

    public String getNom() { return nom; }
    public void setNom(String nom) { this.nom = nom; }

    public String getPoste() { return poste; }
    public void setPoste(String poste) { this.poste = poste; }
}
