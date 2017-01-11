 
<?php
include_once "includes/header.php";


$id = (int) (isset($_GET["id"]) ? $_GET["id"] : null);
if (is_integer($id)) {
    $query = "SELECT * FROM posts WHERE id= " . $id;
    $result = $db->select($query);
    $result = mysqli_fetch_assoc($result);
} else {
    header("Location:index.php");
}
$query = "SELECT * FROM categor";
$categories = $db->select($query);
?>

<?php
if (isset($_POST["update"])) {
    $title = mysqli_real_escape_string($db->link, $_POST["title"]);
    $body = mysqli_real_escape_string($db->link, $_POST["body"]);
    $category = mysqli_real_escape_string($db->link, $_POST["category"]);
    $author = mysqli_real_escape_string($db->link, $_POST["author"]);
    $tags = mysqli_real_escape_string($db->link, $_POST["tags"]);

    if (empty($title) || empty($body) || empty($category) || empty($author) || empty($tags)) {
        $error = "Please fill all the fields";
    } else {
        $query = "UPDATE posts SET title='$title',body='$body',category_id='$category',author='$author',tags='$tags' "
                . " WHERE id= " . $id;
        $insert_row = $db->insert($query);
    }
}
?>

<?php
if (isset($_POST["delete"])) {

    $query = "DELETE FROM posts WHERE id= " . $id;
    $delete_row = $db->delete($query);
}
?>
<h1>Edit Post</h1>
<form method="POST" action="edit_post.php?id=<?php echo $id ?>">
    <div class="form-group">
        <label>Post Title</label>
        <input type="text" name="title" value="<?php echo $result['title']; ?>" class="form-control" placeholder="Enter title">
    </div>
    <div class="form-group" >
        <label>Post Body</label>
        <textarea name="body"  class="form-control">
<?php echo $result['body']; ?>
        </textarea>
    </div>
    <div class="form-group">
        <label>Category Select</label>
        <select name="category" class="form-control">
<?php while ($row = $categories->fetch_assoc()): ?>
                <option value="<?php echo $row ["id"]; ?>"><?php echo $row['name']; ?></option>

            <?php endwhile; ?>
        </select>
    </div>
    <div class="form-group">
        <label>Author</label>
        <input type="text" name="author" value="<?php echo $result['author']; ?>" class="form-control" placeholder="Enter Author Name">
    </div>
    <div class="form-group">
        <label>Tags</label>
        <input type="text" name="tags" value="<?php echo $result['tags']; ?>" class="form-control" placeholder="Enter Tags">
    </div>

    <input type="submit" name="update"  class="btn btn-default" value="Submit">
    <a href="index.php" class="btn btn-default">Cancel</a>
    <input type="submit" name="delete" class="btn btn-danger" value="Delete">
</form>

<?php include_once "includes/footer.php"; ?>