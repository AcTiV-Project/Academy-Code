<?php require_once 'include/cabecera.php'; ?>

    <main class="cuerpo">
        <div class="intro">
            <article>
                <h1 id="titulo-intro">Titulo</h1>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Facilis vitae ullam voluptates minus aliquam adipisci magnam. Ratione officiis nobis excepturi cupiditate quas? Placeat accusamus tenetur corrupti perspiciatis eius. Quasi, temporibus.
                Illum neque repudiandae unde nihil. Tempore impedit sed odit eos! Unde porro harum delectus laudantium dicta quaerat quasi amet pariatur doloremque dignissimos obcaecati, dolore laboriosam! Harum saepe corporis doloremque temporibus.</p>
            </article>
        </div>

        <div class="secciones"> 
            <div class="buscador seccion">
                <form action="view/buscar.php" method="post">
                    <input id="input-buscador" type="search" name="consulta" placeholder="Buscar">
                    <input id="boton-buscador" type="submit" value="Buscar">
                </form>
            </div>

            <div class="articulos seccion">
                <?php 
                    include('php/conexion.php');
                    include('php/main.php');

                    $consulta = listarArticulos($conexion);
                        while($ver = mysqli_fetch_array($consulta)):
                ?>
                
                <article class="articulo seccion">
                    <a class="titulo-articulo" href="view/info-articulo.php?id=<?=$ver['id']?>"> 
                        <?=$ver['titulo1']?> 
                    </a>
                    <p> <?=$ver['descripcion1']?> </p>
                </article>

                <?php endwhile; ?>
            </div>

            <div class="intro-ejercicios">
                <div class="descripcion-ejercicio caja-ejercicio">
                    <article> 
                        <h1>JavaScript</h1>
                        <p >Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eveniet quas repellendus eligendi, debitis consequuntur inventore!</p>
                        <a href="view/ejercicio.php">Empezar</a>
                    </article>
                </div>

                <div class="codigo-ejercicio caja-ejercicio">
<pre>
function myFunction() {
  let x = document.getElementById("demo");
  x.style.fontSize = "25px";
  x.style.color = "red";
}
</pre>
                </div>
            </div>
        </div>

    </main> 

<?php require_once 'include/pie-pagina.php'; ?>