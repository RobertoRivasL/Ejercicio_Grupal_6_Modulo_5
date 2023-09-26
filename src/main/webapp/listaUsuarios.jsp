<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ page import="dao.UsuarioDAOimpl" %>
<%@ page import="models.Usuario" %>
<%@ page import="java.util.List" %>
<%@include file="navbar.jsp" %>
<%@include file="footer.jsp" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Lista Usuarios</title>
    <link rel="stylesheet" href="./css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <style>
        body {
            background-color: grey !important; /* Usa !important para darle mayor prioridad */
        }
    </style>
</head>
<body>
<% if (usuarioConectado != null && usuarioConectado) { %>
<div class="container">
    <h1 class="text-center mt-4">Lista de Usuarios</h1>
    <hr class="my-4">

    <div class="table-responsive">
        <table class="table table-striped table-bordered">
            <thead class="thead-dark">
            <tr>
                <th scope="col">Identificador</th>
                <th scope="col">Usuario</th>
                <th scope="col">Nombre</th>
                <th scope="col">Fecha de Nacimiento</th>
                <th scope="col">Tipo</th>
                <th scope="col">Creación</th>
            </tr>
            </thead>
            <tbody>
            <%
                UsuarioDAOimpl UsuarioDAO = new UsuarioDAOimpl();
                List<Usuario> usuarios = UsuarioDAO.listarUsuarios();
                int usuariosPorPagina = 7;
                int paginaActual = 1;

                if (request.getParameter("pagina") != null) {
                    paginaActual = Integer.parseInt(request.getParameter("pagina"));
                }

                int inicio = (paginaActual - 1) * usuariosPorPagina;
                int fin = Math.min(inicio + usuariosPorPagina, usuarios.size());

                for (int i = inicio; i < fin; i++) {
                    Usuario usuario = usuarios.get(i);
            %>
            <tr>
                <td><%= usuario.getId() %>
                </td>
                <td><%= usuario.getUsername() %>
                </td>
                <td><%= usuario.getNombre() %>
                </td>
                <td><%= usuario.getFechaNacimiento() %>
                </td>
                <td><%= usuario.getTipo() %>
                </td>
                <td><%= usuario.getCreated_at() %>
                </td>
            </tr>
            <%
                }
            %>
            </tbody>
        </table>
    </div>

    <!-- Botones de Paginación -->
    <div class="text-center">
        <% if (paginaActual > 1) { %>
        <a href="?pagina=<%= paginaActual - 1 %>" class="btn btn-primary">Anterior</a>
        <% } %>
        <% if (fin < usuarios.size()) { %>
        <a href="?pagina=<%= paginaActual + 1 %>" class="btn btn-primary">Siguiente</a>
        <% } %>
    </div>
</div>
<% } else { %>
<% response.sendRedirect("login.jsp"); %>
<% } %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
        crossorigin="anonymous"></script>
</body>
</html>

