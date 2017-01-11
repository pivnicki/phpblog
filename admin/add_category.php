 
<?php include_once "includes/header.php";
$db=new Database;

if (isset($_POST["submit"])) {
 
    $category=  mysqli_real_escape_string($db->link,$_POST["category"]);
 
    
    if(empty($category) ){
        $error="Please fill all the fields";
    }else{
        $query="INSERT INTO categor (name) VALUES ('$category')";
       $insert_row=$db->insert($query);
    }
}
 
?>
<h1>Add Category</h1>
<form  method="POST" action="add_category.php">
    <div class="form-group">
        <label>Post category name</label>
        <input type="text" name="category" class="form-control" placeholder="Enter category name">
    </div>
 

     <input name="submit" type="submit" class="btn btn-default" value="Submit">
    <a href="index.php" class="btn btn-default">Cancel</a>
</form>

<?php include_once "includes/footer.php"; ?>