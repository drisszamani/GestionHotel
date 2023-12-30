<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Chambres - Gestion d'Hôtel de Luxe</title>
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
    .room {
      background-color: #FFF8DC;
      padding: 20px;
      margin-bottom: 20px;
      border-radius: 8px;
    }
    .room h3 {
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
  <h1>Chambres Disponibles</h1>
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
  <div class="room">
    <h3>Chambre Simple</h3>
    <p>Description de la chambre simple, idéale pour les voyageurs individuels...</p>
    <a href="reservation.jsp?room=simple" class="btn">Réserver</a>
  </div>
  <div class="room">
    <h3>Chambre Double</h3>
    <p>Description de la chambre double, parfaite pour les couples ou les petits groupes...</p>
    <a href="reservation.jsp?room=double" class="btn">Réserver</a>
  </div>
  <div class="room">
    <h3>Suite de Luxe</h3>
    <p>Description de la suite de luxe, offrant le meilleur en termes de confort et d'élégance...</p>
    <a href="reservation.jsp?room=luxe" class="btn">Réserver</a>
  </div>
  <!-- Autres types de chambres -->
</div>

<div class="footer">
  <p>&copy; 2023 Gestion d'Hôtel de Luxe. Tous droits réservés.</p>
</div>

</body>
</html>
