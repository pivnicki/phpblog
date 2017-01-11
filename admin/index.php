<?php include_once "includes/header.php"; ?>
<?php
$db = new Database;

$query = "SELECT posts.*, categor.name FROM posts "
        . "INNER JOIN categor ON posts.category_id=categor.id";

$posts = $db->select($query);

 
$query="SELECT * FROM categor";

$categories=$db->select($query);
?>
<table class="table table-striped">
    <tr>
        <th>Post ID</th>
        <th>Post Title</th>
        <th>Category</th>
        <th>Author</th>
        <th>Date</th>
    </tr>

    <?php if ($posts) :?> 
<?php while ($row =  mysqli_fetch_assoc($posts)) :?> 
        <tr>  
            <th>  <?php echo $row['id']; ?></th>
            <th><a href="edit_post.php?id=<?php echo $row['id']; ?>"><?php echo $row['title']; ?></th>
            <th>  <?php echo $row['name']; ?></th>
            <th>  <?php echo $row['author']; ?></th>
            <th>  <?php echo formatDate($row['date']); ?></th>  
        </tr>
<?php endwhile; ?>
        <?php else: ?>
    <p>There are no posts yet</p>
<?php endif;?>

</table>

<table class="table table-striped">
<?php while ($row = mysqli_fetch_assoc($categories)) :
    ?> 
        <tr>  
            <th>  <?php echo $row['id']; ?></th>
            <th><a href="edit_category.php?id=<?php echo $row['id']; ?>"><?php echo $row['name']; ?></th>
          
        </tr>
<?php endwhile; ?>

</table>

<?php include_once "includes/footer.php"; ?>