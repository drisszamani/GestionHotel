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
  <title>Réservations - Gestion d'Hôtel de Luxe</title>
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
    form {
      background-color: #FFF8DC;
      padding: 20px;
      border-radius: 8px;
    }
    input, select {
      padding: 10px;
      margin: 10px 0;
      border-radius: 5px;
      border: 1px solid #ddd;
      width: 100%;
    }
    .btn {
      background-color: #8B4513;
      color: white;
      padding: 10px 20px;
      border: none;
      cursor: pointer;
      border-radius: 5px;
    }
    .btn:hover {
      background-color: #A0522D;
    }
  </style>
</head>
<body>

<div class="header">
  <h1>Réservez Votre Séjour</h1>
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
  <%
    String offer = request.getParameter("offer");
    String discount = request.getParameter("discount");
    String roomType = request.getParameter("type");
  %>
  <% if (offer != null) { %>
  <h2>Offre Spéciale : <%= offer %></h2>
  <p>Remise : <%= discount %></p>
  <p>Type de chambre sélectionnée : <%= roomType %></p>
  <% } %>
  <form action="submitReservation" method="POST">
    <h2>Formulaire de Réservation</h2>
    <label for="checkin">Date d'arrivée:</label>
    <input type="date" id="checkin" name="checkin" required>

    <label for="checkout">Date de départ:</label>
    <input type="date" id="checkout" name="checkout" required>

    <label for="roomtype">Type de Chambre:</label>
    <select id="roomtype" name="roomtype">
      <option value="single">Simple</option>
      <option value="double">Double</option>
      <option value="suite">Suite</option>
    </select>

    <!-- Ajoutez d'autres champs selon les besoins -->

    <input type="submit" value="Réserver" class="btn">
  </form>
</div>

<div class="footer">
  <p>&copy; 2023 Gestion d'Hôtel de Luxe. Tous droits réservés.</p>
</div>

</body>
</html>
