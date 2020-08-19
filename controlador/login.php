<?php   
    include_once 'conection.php';

    session_start();

    if($_SERVER["REQUEST_METHOD"] == "POST"){
        $usuario = mysqli_real_escape_string($conn, $_POST['usuario']);
        $contra = mysqli_real_escape_string($conn, $_POST['passwrd']);

        $sql = "SELECT usuario, contrasenia FROM Usuario WHERE Usuario = $usuario AND contrasenia = $contra";
        $result = mysqli_query($conn, $sql);
        
        $count = mysqli_num_rows($result);

        if($count == 1){
            //session_register("usuario");
            $_SESSION['login_user'] = $usuario;

            header("location: ../vistas/recuperar.html");
        }else{
            $error = "Usuario y/o contraseña invalidos";
        }

    }

?>