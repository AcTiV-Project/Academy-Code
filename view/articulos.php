<?php require_once '../include/cabecera.php' ?>

    <main class="cuerpo">
        <div class="secciones">
            <div class="buscador seccion">
                <form action="buscar.php" method="post">
                    <input id="input-buscador" type="search" name="consulta" placeholder="Buscar" id="">
                    <input id="boton-buscador" name="buscando" type="submit" value="Buscar">
                </form>
            </div>

            <?php 
                include('../php/conexion.php');
                include('../php/main.php');

                $consulta = consult_articulo($conexion);
                    while($ver = mysqli_fetch_array($consulta)):
            ?>
 
            <article class="articulo seccion">
                <a class="titulo-articulo" href="info-articulo.php?id=<?=$ver['id']?>">
                    <?=$ver['titulo1']?>
                </a>
                <p><?=$ver['descripcion1']?></p>
            </article>

            <?php endwhile; ?>

            <div class="paginador">
                <?php require_once '../php/paginacion.php' ?>
            </div>
        </div>
    </main>

<?php require_once '../include/pie-pagina.php' ?>