<?php
$query = "SELECT * FROM categor";

$categories = $db->select($query);

?>
 

<div class="col-sm-3 col-sm-offset-1 ">
    <div class="sidebar-module sidebar-module-inset">
        <h4>About</h4>
        <p> Stevanov test blog PHP</p>
    </div>
    <div class="sidebar-module">
        <h4>Categories</h4>
        <ol class="list-unstyled">
            <?php if ($categories) : ?>
                <?php while ($row = $categories->fetch_assoc()): ?>

                    <li><a href="posts.php?category=<?php echo $row['id']; ?>"><?php echo $row['name']; ?></a></li>

                <?php endwhile; ?>
            <?php else: ?>
                <p>There are no categories yet</p>
            <?php endif; ?>
        </ol>
    </div>
</div><!-- /.blog-sidebar -->

</div><!-- /.row -->

        </div><!-- /.container -->

        <footer class="blog-footer">
            <p>Blog template built for <a href="http://getbootstrap.com">Bootstrap</a> by <a href="https://twitter.com/mdo">@mdo</a>.</p>
            <p>
                <a href="#">Back to top</a>
            </p>
        </footer>


        <!-- Bootstrap core JavaScript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
        <script src="http://getbootstrap.com/dist/js/bootstrap.min.js"></script>

    </body>
</html>
