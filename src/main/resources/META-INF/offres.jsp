<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Offres Spéciales - Gestion d'Hôtel de Luxe</title>
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
        .offer {
            background-color: #FFF8DC;
            padding: 20px;
            margin-bottom: 20px;
            border-radius: 8px;
            position: relative;
        }
        .offer h3 {
            margin-top: 0;
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
    <h1>Offres Spéciales</h1>
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
    <div class="offer">
        <h3>Forfait Romantique</h3>
        <p>Profitez d'une réduction de 20% sur notre suite de luxe...</p>
        <a href="reservation.jsp?offer=romantic" class="btn">Réserver</a>
    </div>
    <div class="offer">
        <h3>Week-end Détente</h3>
        <p>Un week-end de relaxation avec accès au spa...</p>
        <a href="reservation.jsp?offer=relaxation" class="btn">Réserver</a>
    </div>
    <div class="offer">
        <h3>Offre Familiale</h3>
        <p>Réservez une chambre familiale pour 4 nuits...</p>
        <a href="reservation.jsp?offer=family" class="btn">Réserver</a>
    </div>
    <!-- Autres offres -->
</div>

<div class="footer">
    <p>&copy; 2023 Gestion d'Hôtel de Luxe. Tous droits réservés.</p>
</div>

</body>
</html>
