<?php
include_once "includes/header.php";

$db=new Database;

if (isset($_POST["submit"])) {
    $title=  mysqli_real_escape_string($db->link, $_POST["title"]);
    $body=  mysqli_real_escape_string($db->link,$_POST["body"]);
    $category=  mysqli_real_escape_string($db->link,$_POST["category"]);
    $author=  mysqli_real_escape_string($db->link,$_POST["author"]);
    $tags=  mysqli_real_escape_string($db->link,$_POST["tags"]);
    
    if(empty($title) || empty($body) || empty($category) || empty($author) || empty($tags) ){
        $error="Please fill all the fields";
    }else{
        $query="INSERT INTO posts (title,body,category_id,author,tags) VALUES ('$title','$body','$category','$author','$tags')";
       $insert_row=$db->insert($query);
    }
}


$query = "SELECT * FROM categor";
$categories = $db->select($query);


?>
<h1>Add Post</h1>
<form method="POST" action="add_post.php">
    <div class="form-group" >
        <label>Post Title</label>
        <input type="text" name="title" class="form-control" placeholder="Enter title">
    </div>
    <div class="form-group" >
        <label>Post Body</label>
        <textarea name="body" class="form-control"></textarea>
    </div>
    <div class="form-group" >
        <label>Category Select</label>
        <select name="category" class="form-control">
            <?php while ($row = $categories->fetch_assoc()): ?>
                <option value="<?php echo $row['id']?>"><?php echo $row['name']; ?></option>              
            <?php endwhile; ?>
        </select>
    </div>
    <div class="form-group">
        <label>Author</label>
        <input type="text" name="author" class="form-control" placeholder="Enter Author Name">
    </div>
    <div class="form-group"  >
        <label>Tags</label>
        <input type="text" name="tags" class="form-control" placeholder="Enter Tags">
    </div>

    <input name="submit" type="submit"  class="btn btn-default" value="Submit">
    <a href="index.php" class="btn btn-default">Cancel</a>
</form>
 

<?php include_once "includes/footer.php"; ?>