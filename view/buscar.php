<?php require_once '../include/cabecera.php' ?>

    <main class="cuerpo">
        <div class="buscador seccion">
            <form action="buscar.php" method="post">
                <input id="input-buscador" type="search" name="consulta" placeholder="Buscar" id="">
                <input id="boton-buscador" name="buscando" type="submit" value="Buscar">
            </form>
        </div>

        <?php 
            include('../php/conexion.php');
            include('../php/main.php');

            $resultado = buscador($conexion, $_POST['consulta']);
                if(!empty($resultado) && mysqli_num_rows($resultado) >=1 ):
                    while($ver = mysqli_fetch_array($resultado)):
        ?>

            <article class="articulo seccion">
                <a class="titulo-articulo" href="info-articulo.php?id=<?=$ver['id']?>">
                    <?=$ver['titulo1']?>
                </a>
                
                <p>
                    <?=$ver['descripcion1']?>
                </p>
            </article>

        <?php 
                endwhile; 
            else:
        ?>

            <h1>No hay Datos que coincidan con tu busqueda</h1>
        
        <?php endif; ?>
    </main>

<?php require_once '../include/pie-pagina.php' ?>