<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>À Propos - Gestion d'Hôtel de Luxe</title>
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
        .main h2 {
            color: #A0522D;
        }
        .main p {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>

<div class="header">
    <h1>À Propos de Notre Hôtel</h1>
</div>

<div class="nav-bar">
    <a href="index.jsp">Accueil</a>
    <a href="reservation.jsp">Réservations</a>
    <a href="chambres.jsp">Chambres</a>
    <a href="offres.jsp">Offres</a>
    <a href="contact.jsp">Contact</a>
    <a href="about.jsp">À Propos</a>
</div>

<div class="main">
    <h2>Histoire de Notre Établissement</h2>
    <p>Notre hôtel, fondé en 1920, a traversé les époques en offrant un service de luxe et une expérience inoubliable à ses clients. Situé au cœur de la ville, l'hôtel combine parfaitement charme historique et confort moderne.</p>

    <h2>Nos Services</h2>
    <p>Notre hôtel offre une gamme complète de services, incluant un spa de classe mondiale, un restaurant gastronomique, une piscine chauffée, et des salles de conférence équipées pour vos événements professionnels ou privés.</p>

    <h2>Notre Mission</h2>
    <p>Notre mission est de fournir à nos clients une expérience exceptionnelle, alliant luxe, confort et un service clientèle de première classe. Nous nous engageons à maintenir les plus hauts standards de qualité et d'hospitalité.</p>

    <h2>Engagement envers la Durabilité</h2>
    <p>Nous sommes fiers de nos efforts pour réduire notre impact environnemental et promouvoir des pratiques durables dans toutes nos opérations.</p>
</div>

<div class="footer">
    <p>&copy; 2023 Gestion d'Hôtel de Luxe. Tous droits réservés.</p>
</div>

</body>
</html>
