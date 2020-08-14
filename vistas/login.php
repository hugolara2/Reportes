<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="login.css">
    <title>Iniciar Sesión</title>
</head>
<body>
    <header class="header">
        <img class="header__img" src="" alt="Logo"/>
    </header>
    <section class="login">
        <section class="login__container">
            <h2>Iniciar Sesión</h2>
            <form action="../Modelos/login.php" method="POST" class="login__container--form">
                <label for="user">Usuario</label>
                <input type="text" class="input" name="user">
                <label for="pwd">Contraseña</label>
                <input type="password" class="input" name="pwd">
                <input type="submit" class="input">
                <div class="login__container--recordar">
                    <label> <input type="checkbox" id="cboxRecordar" value="checkbox">
                        Recuerdame
                    </label>
                    <a href="">Olvide mi contraseña</a>
                </div>
            </form>
        </section>
    </section>
    <footer class="footer">
        <a href="">Terminos de uso</a>
        <a href="">Declarasion de privacidad</a>
        <a href="">Centro de ayuda</a>
    </footer>
</body>
</html>