<?php   
    include_once 'conection.php';

    session_start();

    if($_SERVER["REQUEST_METHOD"] == "POST"){
        $usuario = mysqli_real_escape_string($conn, $_POST[])
    }

?>