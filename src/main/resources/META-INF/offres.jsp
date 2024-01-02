<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link href="https://fonts.googleapis.com/css2?family=Great+Vibes&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <title>Accueil</title>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light position-relative top-0 start-0 w-100">
    <div class="container">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarContent">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse p-2 flex-column" id="navbarContent">
            <div class="d-flex justify-content-center">
                <a class="navbar-brand d-none d-lg-block" href="index.jsp">
                    <img src="images/logohotel.png" height="250" width="auto">
                </a>
            </div>
            <div class="d-block w-100">
                <ul class="navbar-nav d-flex justify-content-center align-items-center pt-3">
                    <li class="nav-item mx-2">
                        <a class="nav-link active" href="index.jsp">
                            Accueil
                        </a>
                    </li>
                    <li class="nav-item mx-2">
                        <a class="nav-link" href="chambres.jsp">
                            Chambres
                        </a>
                    </li>
                    <li class="nav-item mx-2">
                        <a class="nav-link" href="about.jsp">
                            À propos
                        </a>
                    </li>
                    <li class="nav-item mx-2">
                        <a class="nav-link" href="offres.jsp">
                            Offres
                        </a>
                    </li>
                    <li class="nav-item mx-2">
                        <a class="nav-link" href="reservation.jsp">
                            Réservation
                        </a>
                    </li>
                    <li class="nav-item mx-2">
                        <a class="nav-link" href="profil.jsp">
                            Profil
                        </a>
                    </li>
                    <li class="nav-item mx-2">
                        <a class="nav-link" href="contact.jsp">
                            Contact
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</nav>


<div class="header-banner">
    <img src="images/patrick-robert-doyle-AH8zKXqFITA-unsplash.jpg" alt="Banner"/>
    <div class="position-absolute top-50 start-50 translate-middle text-center">
        <img src="images/logohotelwhite.png" alt="ZK Grandeur Hôtel Logo" class="header-logo"/>
        <h1 class="titre-hotel">Offres - Zk Grandeur Hôtel</h1>
        <a href="reservation.jsp" class="btn btn-custom">
            Réserve maintenant!
        </a>
    </div>
</div>

<!--images/eddi-aguirre-ZAVHbpOn4Jk-unsplash.jpg-->
<!--images/kelsey-curtis--27u_GzlAFw-unsplash.jpg-->
<div class="image-slide-container">
    <div class="image-wrapper" style="width: 50%; float: left;">
        <img src="images/eddi-aguirre-ZAVHbpOn4Jk-unsplash.jpg" class="slide-image" data-slide-direction="left" alt="Image 1">
    </div>
    <div class="image-wrapper" style="width: 50%; float: right;">
        <img src="images/kelsey-curtis--27u_GzlAFw-unsplash.jpg" class="slide-image" data-slide-direction="right" alt="Image 2">
    </div>
    <!-- Add more images as needed -->
</div>

</header>

<style>

    h1 {
        font-family: 'Great Vibes', cursive;
        font-size: 40px;
    }
    @keyframes fadeInUp {
        from {
            opacity: 0;
            transform: translateY(20px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }

    .titre-hotel {
        font-family: 'Great Vibes', cursive;
        animation: fadeInUp 5s ease-out forwards;
        opacity: 0; /* Commencer avec une opacité de 0 pour l'animation */
    }


    .luxury-title {
        font-family: 'Great Vibes', serif;
        color: #4a4a4a;
        font-size: 46px;
        margin-bottom: 20px;
    }

    .luxury-text {
        font-family: 'Great Vibes', sans-serif;
        color: #b59f3b;
        font-size: 30px;
        line-height: 1.6;
    }

    .img-fluid {
        border-radius: 5px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }
    .header-banner .btn-custom {
        background-color: transparent; /* Fond blanc */
        color: #ffffff; /* Texte en noir clair */
        border: transparent; /* Bordure noire */
        /* Autres propriétés du bouton */
    }

    .header-banner .btn-custom:hover {
        background-color: #b59f3b; /* Couleur de fond au survol */
        color: white; /* Texte blanc au survol */
        border: 2px solid #b59f3b; /* Bordure de la même couleur que le fond au survol */
    }
    .header-banner {
        position: relative;
        text-align: center;
        color: white;
    }

    .header-banner img {
        width: 100%;
        height: auto;
    }
    .navbar-nav .nav-link {
        transition: color 0.3s ease; /* Transition pour le survol */
    }

    .navbar-nav .nav-link:hover {
        color: #b59f3b; /* Couleur de survol, assortie au bouton 'Réserver maintenant' */
    }

    /* Style personnalisé pour le bouton */
    .btn-custom {
        background-color: transparent; /* Fond transparent */
        color: #333; /* Couleur du texte noir clair */
        border: none; /* Pas de bordure */
        padding: 10px 20px; /* Espacement interne */
        border-radius: 5px; /* Coins arrondis */
        font-weight: bold; /* Texte en gras */
        text-transform: uppercase; /* Texte en majuscules */
        transition: background-color 0.3s ease, color 0.3s ease, border 0.3s ease; /* Transition pour survol */
    }

    /* Style du bouton au survol */
    .btn-custom:hover {
        background-color: #b59f3b; /* Couleur de fond au survol */
        color: white; /* Couleur du texte au survol */
        border: 2px solid #b59f3b; /* Ajout d'une bordure au survol */
    }

    /* Style personnalisé pour le footer */
    .footer {
        background-color: #f8f9fa; /* Couleur de fond clair */
        color: #333; /* Couleur du texte sombre */
        padding: 20px 0; /* Réduction de l'espacement */
        font-family: 'Arial', sans-serif; /* Police élégante */
    }

    .footer .container {
        display: flex;
        justify-content: space-around;
        align-items: center;
        flex-wrap: wrap;
    }

    .footer .nav-item {
        list-style: none;
        display: inline;
        margin: 0 10px;
    }

    .footer a {
        color: #333;
        text-decoration: none;
        margin-bottom: 10px;
        display: inline;
        transition: color 0.3s ease; /* Transition pour le survol */
    }

    .footer a:hover {
        color: #b59f3b; /* Couleur de survol, assortie au bouton 'Réserver maintenant' */
    }

    .footer .logo-center {
        text-align: center;
        width: 100%;
        margin-bottom: 20px;
    }

    @media (max-width: 768px) {
        .footer .container {
            flex-direction: column;
            align-items: center;
        }

        .footer .nav-item {
            display: block;
            margin-bottom: 10px;
        }
    }
</style>
</header>
<div class="container my-5">
    <div class="row text-start align-items-center gy-5">
        <div class="col-12 col-md-6">
            <img src="images/detente.jpg" class="img-fluid shadow luxury-image" alt="Luxury Room"/>
        </div>
        <div class="col-12 col-md-6">
            <h1 class="luxury-title">Offre Détente</h1>
            <p class="luxury-text">
                Notre offre "Week-end Détente" vous permet
                de profiter d'un week-end de relaxation ultime.
                Vous aurez accès à notre spa de classe mondiale,
                où vous pourrez vous détendre et vous ressourcer.
                Profitez de massages relaxants, de soins du visage
                apaisants et de toutes les commodités de notre spa.
                Laissez le stress derrière vous et offrez-vous
                un moment de pure détente avec cette offre exclusive.
            </p>
            <a href="#" class="btn btn-custom luxury-button">
                Réserver maintenant
            </a>
        </div>
    </div>
</div>
<div class="footer">
    <div class="container">
        <div class="logo-center">
            <a href="index.jsp">
                <img src="images/logohotel.png" height="100" alt="ZK GRANDEUR HÔTEL">
            </a>
        </div>
        <ul>
            <li class="nav-item">
                <a href="index.jsp" class="nav-link">Accueil</a>
            </li>
            <li class="nav-item">
                <a href="chambres.jsp" class="nav-link">Chambres</a>
            </li>
            <li class="nav-item">
                <a href="about.jsp" class="nav-link">À propos</a>
            </li>
            <li class="nav-item">
                <a href="offres.jsp" class="nav-link">Offres</a>
            </li>
            <li class="nav-item">
                <a href="reservation.jsp" class="nav-link">Réservation</a>
            </li>
            <li class="nav-item">
                <a href="profil.jsp" class="nav-link">Profil</a>
            </li>
            <li class="nav-item">
                <a href="contact.jsp" class="nav-link">Contact</a>
            </li>
        </ul>
    </div>
</div>

<script src="script.js"></script>
</body>
</html>