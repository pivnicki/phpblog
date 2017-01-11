<div class="col-sm-3 col-sm-offset-1 blog-sidebar">
    <div class="sidebar-module sidebar-module-inset">
        <h4>About</h4>
        <p>Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>
    </div>
    <div class="sidebar-module">
        <h4>Categories</h4>
        <ol class="list-unstyled">
            <?php if ($categories) : ?>
                <?php while ($row = mysqli_fetch_assoc($categories)): ?>

                    <li><a href="#"><?php echo $row['name']; ?></a></li>

                <?php endwhile; ?>
            <?php else: ?>
                <p>There are no categories yet</p>
            <?php endif; ?>
        </ol>
    </div>
</div><!-- /.blog-sidebar -->