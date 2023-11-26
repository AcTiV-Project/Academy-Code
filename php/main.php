<?php
    include('conexion.php');

    function consult_articulo($conexion) {
        $por_pagina = 2;
        $pagina = isset($_GET['pagina']) ? $_GET['pagina'] : 1;
        $desde = ($pagina - 1) * $por_pagina;

        // Consulta a la base de datos
        $sql = "SELECT * FROM articulos LIMIT $desde, $por_pagina";
        $resultado = mysqli_query($conexion, $sql);

        $consulta = false;

        if($resultado && mysqli_num_rows($resultado)>=1){
            $consulta = $resultado;
        }

        return $consulta;
    }

    function listarArticulos($conexion){
        $sql = "SELECT * FROM articulos LIMIT 5";
        $consulta = mysqli_query($conexion, $sql);

        $resultado = false;

        if($consulta && mysqli_num_rows($consulta)>=1){
            $resultado = $consulta;
        }

        return $resultado;
    }

    function mostrar_articulo($conexion){ 
        // Parámetros para la paginación
        $por_pagina = 5;
        $pagina = isset($_GET['pagina']) ? $_GET['pagina'] : 1;
        $desde = ($pagina - 1) * $por_pagina;

        // Consulta a la base de datos
        $sql = "SELECT * FROM articulos LIMIT $desde, $por_pagina";
        $consulta = mysqli_query($conexion, $sql);

        $resultado = false;

        if($consulta && mysqli_fetch_array($consulta) >= 1){
            $resultado = $consulta;
        }

        return $resultado;

    }

    function listarARTICULO($conexion, $id){
        $sql = "SELECT * FROM articulos WHERE id = '$id'";
        $consulta = mysqli_query($conexion, $sql);

        $resultado = false;

        if($consulta && mysqli_num_rows($consulta)>=1){
            $resultado = mysqli_fetch_assoc($consulta);
        }

        return $resultado;
    }

    function buscador($conexion, $consulta){
        if(isset($_POST['consulta'])){
            $consulta = $_POST['consulta'];

            $sql = "SELECT * FROM articulos WHERE titulo1 LIKE '%$consulta%'";
            $consulta = mysqli_query($conexion, $sql);
    
            $dato = false;
    
            if($consulta && mysqli_num_rows($consulta)>=1){
                $dato = $consulta;
            }
     
            return $dato;

        }
    }

?>