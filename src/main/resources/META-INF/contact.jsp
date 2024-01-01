<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact - Gestion d'Hôtel de Luxe</title>
    <style>
        body {
            font-family: 'Times New Roman', serif;
            background-color: #FAF0E6;
            margin: 0;
            padding: 0;
        }
        .header, .footer {
            background-color: #8B7D6B;
            color: #FFF8DC;
            text-align: center;
            padding: 20px 0;
        }
        .nav-bar {
            display: flex;
            justify-content: center;
            background-color: #D2B48C;
        }
        .nav-bar a {
            display: block;
            color: #FFF8DC;
            text-decoration: none;
            padding: 10px 15px;
        }
        .nav-bar a:hover {
            background-color: #A0522D;
            color: #FFF8DC;
        }
        .main {
            padding: 15px;
            color: #8B4513;
        }
        .contact-form, .contact-info {
            background-color: #FFF8DC;
            padding: 20px;
            margin-bottom: 20px;
            border-radius: 8px;
        }
        .contact-form h2, .contact-info h2 {
            color: #A0522D;
        }
        input, textarea {
            padding: 10px;
            margin: 10px 0;
            border-radius: 5px;
            border: 1px solid #ddd;
            width: 100%;
        }
        .btn {
            display: inline-block;
            padding: 10px 20px;
            background-color: #8B4513;
            color: #FFF8DC;
            text-align: center;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .btn:hover {
            background-color: #A0522D;
        }
    </style>
</head>
<body>

<div class="header">
    <h1>Contactez-Nous</h1>
</div>

<div class="nav-bar">
    <a href="index.jsp">Accueil</a>
    <a href="reservation.jsp">Réservations</a>
    <a href="chambres.jsp">Chambres</a>
    <a href="contact.jsp">Contact</a>
    <a href="offres.jsp">Offres</a>
    <a href="profil.jsp">Profil</a>
    <a href="about.jsp">À Propos</a>
</div>

<div class="main">
    <div class="contact-form">
        <h2>Laissez-nous un Message</h2>
        <form action="sendEmail" method="POST">
            <input type="text" name="name" placeholder="Votre nom" required>
            <input type="email" name="email" placeholder="Votre email" required>
            <textarea name="message" placeholder="Votre message" rows="5" required></textarea>
            <input type="submit" value="Envoyer" class="btn">
        </form>
    </div>
    <div class="contact-info">
        <h2>Nos Coordonnées</h2>
        <p><strong>Adresse :</strong> 123, Rue de Luxe, Ville, Pays</p>
        <p><strong>Téléphone :</strong> +1 234 567 890</p>
        <p><strong>Email :</strong> contact@hotel-de-luxe.com</p>
        <!-- Autres informations de contact -->
    </div>
</div>

<div class="footer">
    <p>&copy; 2023 Gestion d'Hôtel de Luxe. Tous droits réservés.</p>
</div>


</body>
</html>
