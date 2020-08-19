<?php   
    include 'conection.php';

    session_start();

    if($_SERVER["REQUEST_METHOD"] == "POST"){
        $usuario = mysqli_real_escape_string($conn, $_POST['usuario']);
        $contra = mysqli_real_escape_string($conn, $_POST['passwrd']);

        echo $usuario." ".$contra;

        $sql = "SELECT* FROM Usuario WHERE Usuario = $usuario AND Contrasenia = $contra";
        $result = mysqli_query($conn, $sql);    
        $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
        $activo = $row['Activo'];

        $count = mysqli_num_rows($result);

        if($count == 1){
            $_SESSION['login'] = $usuario;

            header("location: ../vistas/recuperar.php");
        }else{
            $error = "Usuario y/o contraseña invalidos";
        }

    }

?>