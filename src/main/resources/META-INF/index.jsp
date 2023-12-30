<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Accueil - Gestion d'Hôtel de Luxe</title>
    <style>
        body {
            font-family: 'Times New Roman', serif;
            margin: 0;
            padding: 0;
            background-color: #FAF0E6; /* Un beige doux */
        }
        .header, .footer {
            background-color: #8B7D6B; /* Un brun taupe pour un look luxueux */
            color: #FFF8DC; /* Un beige clair pour le texte */
            text-align: center;
            padding: 20px 0;
            font-size: 22px;
        }
        .nav-bar {
            display: flex;
            justify-content: center;
            background-color: #D2B48C; /* Un brun tanné */
        }
        .nav-bar a {
            display: block;
            color: #FFF8DC; /* Un beige clair pour les liens */
            text-decoration: none;
            padding: 10px 15px;
            font-size: 18px;
        }
        .nav-bar a:hover {
            background-color: #A0522D; /* Un brun terre de Sienne pour le survol */
            color: #FFF8DC;
        }
        .main {
            padding: 15px;
            color: #8B4513; /* Un brun plus foncé pour le texte */
        }
    </style>
</head>
<body>

<div class="header">
    <h1>Bienvenue à notre Hôtel de Luxe</h1>
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
    <h2>Découvrez le Confort et le Luxe</h2>
    <p>Bienvenue sur le site officiel de notre hôtel de luxe. Découvrez nos chambres élégantes, faites des réservations et explorez nos services exceptionnels.</p>
    <!-- Autres contenus et informations sur l'hôtel -->
</div>

<div class="footer">
    <p>&copy; 2023 Gestion d'Hôtel de Luxe. Tous droits réservés.</p>
</div>

</body>
</html>
