<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Grupal 1 M5</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        /* Estilo personalizado para el elemento Bienvenid@ */
        .nav-item-bienvenido {
            display: flex;
            align-items: center;
            margin-left: 10px; /* Ajusta el margen izquierdo según sea necesario */
        }
    </style>
</head>
<body>
<header>
    <nav class="navbar navbar-expand-lg bg-dark custom-navbar">
        <div class="container-fluid">
            <a class="navbar-brand" href="inicio.jsp">
                <img src="https://cdn-icons-png.flaticon.com/512/2450/2450449.png" alt="Logo" width="30" height="24"
                     class="d-inline-block align-text-top">
            </a>
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link text-light" href="inicio.jsp">Inicio</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-light" href="team.jsp">Team</a>
                </li>
            </ul>
            <%
                Boolean usuarioConectado = (Boolean) session.getAttribute("usuarioConectado");
            %>

            <% if (usuarioConectado != null && usuarioConectado) { %>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link text-light" href="contacto.jsp">Contacto</a>
                    </li>
                    <li class="nav-item dropdown">
                        <button class="btn btn-dark dropdown-toggle" data-bs-toggle="dropdown"
                                aria-expanded="false">
                            Capacitacion
                        </button>
                        <ul class="dropdown-menu dropdown-menu-dark">
                            <li><a class="dropdown-item" href="capacitacion.jsp">Capacitacion</a></li>
                            <li><a class="dropdown-item" href="listaCapacitacion.jsp">Lista Capacitacion</a></li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-light" href="listaUsuarios.jsp">Lista Usuarios</a>
                    </li>
                </ul>
                <div class="vr" style="width: 500px;"></div>
                <li class="nav-item-bienvenido">
                    <span class="text-light">Bienvenid@: <%= session.getAttribute("nombre") %></span>
                </li>
                <li class="nav-item">
                    <a class="btn btn-outline-secondary text-light mt-4" href="svLogout">Cerrar Sesi&oacute;n</a>
                </li>
            </div>

            <% } else { %>
            <div>
                <ul>
                    <li class="nav-item">
                        <a class="btn btn-outline-secondary text-light mt-3" href="login.jsp">Iniciar Sesi&oacute;n</a>
                    </li>
                </ul>
            </div>
            <% } %>
        </div>
    </nav>
</header>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
        crossorigin="anonymous"></script>
</body>
</html>
