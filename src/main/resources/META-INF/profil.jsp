<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 30/12/2023
  Time: 20:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profil - Gestion d'Hôtel de Luxe</title>
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
            max-width: 600px;
            margin: auto;
        }
        .profile-info {
            background-color: #FFF8DC;
            padding: 20px;
            border-radius: 8px;
        }
        .profile-info h3 {
            margin-top: 0;
        }
    </style>
</head>
<body>

<div class="header">
    <h1>Votre Profil</h1>
</div>

<div class="nav-bar">
    <a href="index.jsp">Accueil</a>
    <a href="reservation.jsp">Réservations</a>
    <a href="chambres.jsp">Chambres</a>
    <a href="profil.jsp">Profil</a>
    <a href="offres.jsp">Offres</a>
    <a href="profil.jsp">Profil</a>
    <a href="contact.jsp">Contact</a>
    <a href="about.jsp">À Propos</a>
</div>

<div class="main">
    <div class="profile-info">
        <h3>Informations Personnelles</h3>
        <p><strong>Nom :</strong> [Nom de l'utilisateur]</p>
        <p><strong>Email :</strong> [Email de l'utilisateur]</p>
        <!-- Autres informations personnelles -->

        <h3>Réservations Passées</h3>
        <!-- Liste des réservations passées -->

        <!-- Ajouter un bouton ou un lien pour modifier le profil si nécessaire -->
    </div>
</div>

<div class="footer">
    <p>&copy; 2023 Gestion d'Hôtel de Luxe. Tous droits réservés.</p>
</div>

</body>
</html>
