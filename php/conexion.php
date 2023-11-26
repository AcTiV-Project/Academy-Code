<?php
    $servidor = 'localhost';
    $usuario = "root";
    $pass = "";
    $db = "tucodigopro";

    $conexion = new mysqli($servidor, $usuario, $pass, $db);

    if($conexion->connect_error){
        die("conexion fallido".  $conexion->connect_error);
    }
    else{
        //echo "Conectado...";
    }

?>