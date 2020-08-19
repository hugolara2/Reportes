<?php   
    include 'conection.php';

    if($_SERVER["REQUEST_METHOD"] == "POST"){
        $usuario = mysqli_real_escape_string($conn, $_POST['usuario']);
        $contra = mysqli_real_escape_string($conn, $_POST['passwrd']);

        $sql = "SELECT Usuario FROM Usuarios WHERE Usuario = '$usuario' AND Passwrd = '$contra'";
        $query = mysqli_query($conn, $sql);
        $result = mysqli_num_rows($query);

        echo $result;

        if($result > 1){
            $data = mysqli_fetch_array($query);
            session_start();
            $_SESSION['active'] = true;
            $_SESSION['User'] = $data['Usuario'];

            header('Location: recuperar.php');

        }
        else{

        }

    }

?>