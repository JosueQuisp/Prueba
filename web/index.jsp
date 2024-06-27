+<%-- 
    Document   : index
    Created on : 27 jun 2024, 12:17:20
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .login-container {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background-color: #d4e8fd;
            
        }
        .login-card {
            padding: 3rem;
            border: 1px solid #dee2e6;
            border-radius: 0.25rem;
            box-shadow: 0 0.125rem 0.25rem rgba(0, 0, 0, 0.075);
            width: 100%;
            max-width: 400px; 
            border-radius: 20px;
            background-color: rgb(255, 255, 255);
        }
        
        .user-avatar {
            width: 120px;
            height: 120px;
            margin-bottom: 1.5rem;
        }
        #username{ 
            border-radius: 10px;
        }
        .input-group-text {
            background-color: transparent;
            border-left: none;
            border-radius: 10px;
        }
        .input-group .form-control {
            border-right: none;
            border-radius: 10px;
        }
        .btn-primary {
            transition: background-color 0.3s ease, transform 0.3s ease;
            border-radius: 20px;
        }
        .btn-primary:hover {
            background-color: #0056b3;
            transform: scale(1.05);
        }
    </style>
</head>
<body>
    <div class="login-container">
        <div class="login-card">
            <h2 class="text-center mb-4">Inicio de Sesión</h2>
            <div class="text-center mb-4">
                <img src="https://cdn-icons-png.flaticon.com/512/6073/6073873.png" alt="User Avatar" class="user-avatar rounded-circle">
            </div>
            <form action="Login" method="post">
                <div class="form-group">
                    <input type="text" name="username" class="form-control form-control-lg" id="username" placeholder="Ingresa tu usuario">
                </div>
                <div class="form-group">
                    <div class="input-group">
                        <input type="password" name="clave" class="form-control form-control-lg" id="password" placeholder="Ingresa tu contraseña">
                        <div class="input-group-append">
                            <span class="input-group-text" id="togglePassword">
                                <i class="fas fa-eye"></i>
                            </span>
                        </div>
                    </div>
                </div>
                <button type="submit" class="btn btn-primary btn-block btn-lg">Iniciar Sesión</button>
                <div class="text-center mt-3">
                    <a href="#">Crear Cuenta</a> | <a href="#">¿Olvidaste tu contraseña?</a>
                </div>
            </form>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js"></script>
    <script>
        $(document).ready(function() {
            $('#togglePassword').on('click', function() {
                const passwordField = $('#password');
                const passwordFieldType = passwordField.attr('type');
                const newPasswordFieldType = passwordFieldType === 'password' ? 'text' : 'password';
                passwordField.attr('type', newPasswordFieldType);
                $(this).find('i').toggleClass('fa-eye fa-eye-slash');
            });
        });
    </script>
</body>
</html>
