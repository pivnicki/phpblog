
<?php
include_once 'includes/header.php';

 
 $category = (isset($_GET["category"]) ? $_GET["category"] : null);
 
if (isset($category)) {
    $query = "SELECT * FROM posts WHERE category_id= " .$category;    
    $posts = $db->select($query);
 
} else {
    $query = "SELECT * FROM posts";
    $posts = $db->select($query);
}


//$query = "SELECT * FROM categor";
//
//$categories = $db->select($query);
?>

<?php if ($posts): ?>
    <?php while ($row = $posts->fetch_assoc()): ?>
        <div class="blog-post">
            <h2 class="blog-post-title"><?php echo $row ["title"]; ?></h2>
            <p class="blog-post-meta"><?php formatDate($row["date"]); ?><a href="#"><?php echo $row["author"]; ?></a></p>
            <?php echo $row["body"]; ?><
            <a class="readmore" href="post.php?id=<?php echo urlencode($row["id"]); ?>">Read More</a>
        </div><!-- /.blog-post -->
    <?php endwhile; ?>
        <?php else: ?>
    <p>There are no posts yet</p>
<?php endif; ?>



</div><!-- /.blog-main -->

<!--<div class="col-sm-3 col-sm-offset-1 blog-sidebar">
    <div class="sidebar-module sidebar-module-inset">
        <h4>About</h4>
        <p>Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>
    </div>
    <div class="sidebar-module">
        <h4>Categories</h4>
      <ol class="list-unstyled">
<?php //if ($categories) : ?>
    <?php //while ($row = $categories->fetch_assoc()): ?>

                            <li><a href="posts.php?category=<?php// echo $row['id']; ?>"><?php// echo $row['name']; ?></a></li>

    <?php //endwhile; ?>
<?php// else: ?>
                    <p>There are no categories yet</p>
<?php //endif; ?>
        </ol>
    </div>

</div> /.blog-sidebar -->
<?php include_once 'includes/footer.php'; ?>
    