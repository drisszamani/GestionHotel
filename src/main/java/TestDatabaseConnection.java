import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class TestDatabaseConnection {
    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306/hotel_reservation_db";
        String username = "root"; // Remplacez par votre nom d'utilisateur MySQL
        String password = "driss123"; // Remplacez par votre mot de passe MySQL

        try {
            Connection connection = DriverManager.getConnection(url, username, password);
            System.out.println("Connexion à la base de données réussie.");
            // Vous pouvez effectuer des opérations de base de données ici si nécessaire
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("Erreur de connexion à la base de données.");
        }
    }
}
