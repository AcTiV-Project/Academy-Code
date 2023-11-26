<?php require_once '../include/cabecera.php' ?>

    <main class="cuerpo">
        <div class="secciones">
            <div class="info-articulo">

            <?php
                include('../php/conexion.php');                
                include('../php/main.php');

                $consulta_actual = listarARTICULO($conexion, $_GET['id']);

                if(!empty($consulta_actual['id'])){
                    //echo "No hay datos...";
                }

            ?>
                <div class="div-titulo-articulo">
                    <h1><?=$consulta_actual['titulo1']?></h1>
                </div>

                <article>
                    <p><?=$consulta_actual['descripcion1']?></p>
                </article>

                <div class="div-titulo-articulo">
                    <h1><?=$consulta_actual['titulo2']?></h1>
                </div>

                <article>
                    <p><?=$consulta_actual['descripcion2']?></p>
                </article>
                
                <div class="div-titulo-articulo">
                    <h1><?=$consulta_actual['titulo3']?></h1>
                </div>

                <article>
                    <p><?=$consulta_actual['descripcion3']?></p>
                </article>
                
                <div class="codigo-ejercicio caja-ejercicio">
<pre>
<?=$consulta_actual['codigo']?>
</pre>
                </div>

            </div>
        </div>
    </main> 

<?php require_once '../include/pie-pagina.php' ?>