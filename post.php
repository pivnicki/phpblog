<?php
include_once 'includes/header.php';

$id = (int) $_GET['id'];

if (is_integer($id)) {
    $query = "SELECT * FROM posts WHERE id=" . $id;
    $result = $db->select($query);
    $result=  mysqli_fetch_assoc($result);
} else {
    header("Location:index.php");
}
 
?>

<div class="blog-post">
    <h2 class="blog-post-title"><?php echo $result['title'];?></h2>
    <p class="blog-post-meta"><?php echo formatDate($result['date']);?> by <a href="#"><?php echo $result['author'];?></a></p>
  <?php echo $result['body'];?> 

</div><!-- /.blog-post -->
</div>
<?php include_once 'includes/footer.php'; ?>
    