<?php require_once '../include/cabecera.php' ?>

    <main class="cuerpo"> 
        <div class="secciones">
        <div class="intro-ejercicios">

        <?php
            include('../php/conexion.php');
            include('../php/quiz.php');

            $consulta = consult_quiz($conexion);
                while($ver = mysqli_fetch_array($consulta)):
        ?>
            <div class="descripcion-ejercicio caja-ejercicio">
                <article>
                    <h1><?=$ver['titulo']?></h1>

                    <p><?=$ver['descripcion']?></p>
                    
                    <form class="form-ejercicio" action="" method="post">
                        <ul> 
                            <li><?=$ver['respuestaA']?></li>
                            <li><?=$ver['respuestaB']?></li>
                            <li><?=$ver['respuestaC']?></li>
                        </ul>
 
                        <p>A: <input type="radio" name="respuesta" id="a" value="a"></p>
                        <p>B: <input type="radio" name="respuesta" id="b" value="b"></p>
                        <p>C: <input type="radio" name="respuesta" id="c" value="c"></p>
                        <textarea class="clave" name="clave"><?=$ver['clave']?></textarea>
                        <input type="submit" class="btn-quiz" name="quiz" value="Resolver">
                    </form>
                </article>
            </div>
                
            <div class="codigo-ejercicio caja-ejercicio">
<pre>
<?=$ver['codigo']?>
</pre>
                </div>
            </div>

        <?php
            endwhile;
        ?>
            
        </div>
    </main>

<?php require_once '../include/pie-pagina.php' ?>