<?php   
    include 'conection.php';

    if($_SERVER["REQUEST_METHOD"] == "POST"){
        $usuario = mysqli_real_escape_string($conn, $_POST['usuario']);
        $contra = mysqli_real_escape_string($conn, $_POST['passwrd']);

        $sql = "SELECT Usuario FROM Usuarios WHERE Usuario = '$usuario' AND Passwrd = '$contra'";
        $query = mysqli_query($conn, $sql);
        $result = mysqli_num_rows($query);

        echo $result;

        $sql = "SELECT* FROM Usuarios WHERE Usuario = '$usuario' AND Passwrd = '$contra'";
        $result = mysqli_query($conn, $sql);    
        $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
        $activo = $row['active'];

            header('Location: recuperar.php');

        }
        else{

        }

    }

?>