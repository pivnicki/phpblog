<?php
include_once "includes/header.php";

$id = (int) $_GET['id'];

if (is_integer($id)) {
    $query = "SELECT * FROM categor WHERE id=" . $id;
    $result = $db->select($query);
    $result = mysqli_fetch_assoc($result);
} else {
    header("Location:index.php");
}
?>

<?php
if (isset($_POST["update"])) {
    $category = mysqli_real_escape_string($db->link, $_POST["category"]);

    if (is_integer($id)) {
        if (empty($category)) {
            $error = "Please fill all the fields";
        } else {
            $query = "UPDATE categor SET name='$category'  WHERE id= ".$id;
            $update_row = $db->update($query);
        }
    }
}
?>

<?php
if (isset($_POST["delete"])) {

    $query = "DELETE FROM categor WHERE id= " . $id;
    $delete_row = $db->delete($query);
}
?>
<h1>Edit Category</h1>
<form method="POST" action="edit_category.php?id=<?php echo $id;?>">
    <div class="form-group" >
        <label>Post category name</label>
        <input type="text" name="category" value="<?php echo $result["name"]; ?>" 
               class="form-control" placeholder="Enter category name">
    </div>


    <input type="submit" name="update" class="btn btn-default" value="Submit">
    <a href="index.php" class="btn btn-default">Cancel</a>
    <input type="submit" name="delete" class="btn btn-danger" value="Delete">
</form>

<?php include_once "includes/footer.php"; ?>