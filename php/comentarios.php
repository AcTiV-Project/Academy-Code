<?php
    include('conexion.php');

    if(isset($_POST['btn-comentario'])){

        $nombre = $_POST['nombre'];
        $comentario = $_POST['comentario'];

        $sql = "INSERT INTO comentarios VALUES('', '$nombre', '$comentario');";
        $query = mysqli_query($conexion, $sql);

        if($query){
            echo "Datos enviados";
        }
        else{
            echo "Error". mysqli_error($conexion);
        } 
    }

?>