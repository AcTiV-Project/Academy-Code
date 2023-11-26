<?php
    include('conexion.php');

    function consult_quiz($conexion) {
        $sql = "SELECT * FROM ejercicios ORDER BY RAND() LIMIT 1";
        $consulta = mysqli_query($conexion, $sql);

        $resultado = false;

        if($consulta && mysqli_num_rows($consulta) >= 1){
            $resultado = $consulta;
        }

        return $resultado;
    }

    if(isset($_POST['quiz'])){
        $clave = $_POST['clave'];
        $respuesta = $_POST['respuesta'];

        $sql = "SELECT * FROM ejercicios WHERE clave = '$clave' AND Respuesta = '$respuesta' ";
        $consulta = mysqli_query($conexion, $sql);

        $resultado = mysqli_num_rows($consulta);

        if($resultado){
            header("location: ../view/correct.php");
        }
        else{
            header("location: ../view/incorrect.php");
        }
    }
?>