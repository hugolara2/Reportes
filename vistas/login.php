<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inicio de Sesión</title>
    <link rel="icon" type="image/png" href="../icons/php.png">
    <link rel="stylesheet" href="../styles/login.css">
</head>
<body>
    <header class="header">
        <img src="../icons/php.png" alt="Logo" class="header__img">
    </header>
    <div class="login">
        <div class="login__container">
            <h2>Inicio de Sesión</h2>
            <form action="../controlador/login.php" method="POST" class="login__container--form">
                <input class="input" type="text" id="usuario" name="usuario" placeholder="Correo o usuario">
                <input class="input" type="password" id="passwrd" name="passwrd" placeholder="Contraseña">
                <input class="button" type="submit" value="Ingresar">
                <div class="login__container--remember">
                    <label >
                        <input type="checkbox" id="cboxRecordar" value="checkbox">Recordarme
                    </label>
                    <a href="recuperar.html">Olvide mi contraseña</a>
                </div>
            </form>
        </div>
    </div>
    <footer class="footer">
        Todos los derechos reservados 2020
    </footer>
</body>
</html>

