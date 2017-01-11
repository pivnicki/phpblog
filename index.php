<?php
include_once 'includes/header.php';
$query = "SELECT * FROM posts ORDER BY title ASC";
$result = $db->select($query);



?>
<?php if ($result) : ?>
    <?php while ($row = mysqli_fetch_assoc($result)): ?>
        <div class="blog-post">
            <h2 class="blog-post-title"><?php echo $row['title']; ?></h2>
            <p class="blog-post-meta"><?php echo formatDate($row['date']); ?> by <a href="#"><?php echo $row['author']; ?></a></p>
            <?php echo shortenText($row ["body"]); ?>
            <a class="readmore" href="post.php?id=<?php echo urlencode($row["id"]); ?>">Read More</a>
        </div><!-- /.blog-post -->
    <?php endwhile; ?>
<?php else: ?>
    <p>There are no posts yet</p>
<?php endif; ?>


</div><!-- /.blog-main -->

<?php include_once 'includes/footer.php'; ?>
    