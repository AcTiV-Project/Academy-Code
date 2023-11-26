        <footer class="pie-pagina">
            <div class="acerca-de caja-footer">
                <article>
                    <h1>Jorge Bernuil</h1>
                    <h3>Desarrollador Web</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quis iusto voluptate maxime eaque quam quibusdam perspiciatis culpa quod exercitationem? Ut voluptatum recusandae totam, similique labore sit rerum voluptatem voluptate omnis?
                    Omnis sapiente earum suscipit perferendis aspernatur ipsum hic quod veritatis eligendi id tenetur fuga consequatur, animi dolor molestiae quam, incidunt atque sunt modi quibusdam ut laborum nihil architecto. Omnis, voluptatem.
                    Tempore alias dolorum eaque consequatur iste modi est maxime, quibusdam quos nesciunt impedit obcaecati soluta? Magnam eaque labore asperiores voluptates vel, dolores ad corrupti atque eum quam adipisci exercitationem aspernatur!</p>
                </article>
            </div>

            <div class="form-comentarios caja-footer">

            <?php require_once 'comentarios.php' ?>
            <?php require_once 'comentarios.php' ?>

                <form class="comentarios" action="../php/comentarios.php" method="post">
                    <label for="">Nombre</label>
                    <input class="c1" type="text" name="nombre" placeholder="Ingrese su nombre">
                    <label for="">Descripcion</label>
                    <textarea class="c1" name="comentario" id="" cols="30" rows="10" placeholder="Escriba un mensaje" ></textarea>
                    <input id="btn-enviar" name="btn-comentario" type="submit" value="Enviar">
                </form>
            </div>
        </footer>
    </div>

    <script src="../js/main.js"></script>    
</body>
</html>