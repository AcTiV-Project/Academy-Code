<?php

    include('conexion.php');

    $termino_busqueda = $_GET['termino'];

    $sql = "SELECT titulo1, descripcion1 FROM articulos WHERE titulo1 LIKE '%$termino_busqueda%'";
    $consulta = mysql_query($conexion, $sql);

?>