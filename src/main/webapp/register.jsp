<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@include file="navbar.jsp" %>
<%@include file="footer.jsp" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Registro</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <link rel="stylesheet" href="./css/style.css">
</head>
<body style="background-color: bisque">

<hr class="hr" style="height: 100px"/>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-lg-4 col-md-6 col-sm-8">
            <button type="button" class="btn btn-primary mb-3" data-bs-toggle="modal" data-bs-target="#registroModal">
                Registrarse
            </button>

            <!-- Modal de Registro -->
            <div class="modal fade" id="registroModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                 aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Registrarse</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form action="svRegister" method="POST" id="formularioRegistro"
                                  onsubmit="return validateForm()">
                                <div class="mb-3">
                                    <label for="nuevoUsuario" class="form-label">Nombre de Usuario</label>
                                    <input type="text" class="form-control" id="nuevoUsuario" name="nuevoUsuario"
                                           placeholder="Ingresa Usuario" minlength="4" required>
                                </div>
                                <div class="mb-3">
                                    <label for="nuevoPassword" class="form-label">Contraseña</label>
                                    <input type="password" class="form-control" id="nuevoPassword" name="nuevoPassword"
                                           placeholder="Ingresa tu contraseña" minlength="6" required>
                                </div>
                                <div class="mb-3">
                                    <label for="confirmPassword" class="form-label">Confirmar contraseña</label>
                                    <input type="password" class="form-control" id="confirmPassword"
                                           placeholder="Confirma tu contraseña" required>
                                </div>
                                <div class="mb-3">
                                    <label for="nombre" class="form-label">Nombre</label>
                                    <input type="text" class="form-control" id="nombre" name="nombre"
                                           placeholder="Ingresa tu nombre" minlength="3" required>
                                </div>
                                <div class="mb-3">
                                    <label for="fechaNacimiento" class="form-label">Fecha de Nacimiento</label>
                                    <input type="text" class="form-control" id="fechaNacimiento" name="fechaNacimiento"
                                           placeholder="Ingresa tu fecha de nacimiento" required>
                                </div>
                                <div class="mb-3">
                                    <label for="Tipo" class="form-label">Tipo</label>
                                    <select class="form-select" id="Tipo" name="Tipo">
                                        <option>Cliente</option>
                                        <option>Profesional</option>
                                        <option>Administrativo</option>
                                    </select>
                                </div>
                                <div class="mb-3 text-center">
                                    <button type="submit" class="btn btn-primary">Registrar</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    function validateForm() {
        var password = document.getElementById("nuevoPassword").value;
        var confirmPassword = document.getElementById("confirmPassword").value;

        if (password !== confirmPassword) {
            alert("Las contraseñas no coinciden. Por favor, inténtalo de nuevo.");
            return false;
        }

        return true;
    }
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
        crossorigin="anonymous"></script>
</body>
</html>
