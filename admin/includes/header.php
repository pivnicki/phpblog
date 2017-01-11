<?php include_once "../config/config.php"; ?>
<?php include_once "../libraries/Database.php"; ?>
<?php include_once "../helpers/format_helper.php"; ?>

<?php $db = new Database(); ?>
<!DOCTYPE html>
<html lang="en">   
    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <meta name="description" content="My blog">
        <meta name="author" content="Stevan Pivnicki">
        <link rel="icon" href="../../favicon.ico">

        <title>Admin area</title>

        <!-- Bootstrap core CSS -->
        <link href="http://getbootstrap.com/dist/css/bootstrap.min.css" rel="stylesheet">


        <!-- Custom styles for this template -->

        <link href="../css/custom.css" rel="stylesheet" type="text/css"/>


    </head>

    <body>

        <div class="blog-masthead">
            <div class="container">
                <nav class="blog-nav">
                    <a class="blog-nav-item active" href=<?php $_SERVER['SERVER_NAME']; ?>"/blog/admin/index.php">Dashboard</a>
                    <a class="blog-nav-item" href=<?php $_SERVER['SERVER_NAME']; ?>"/blog/admin/add_post.php">Add post</a>
                  
                    <a class="blog-nav-item" href=<?php $_SERVER['SERVER_NAME']; ?>"/blog/admin/add_category.php">Add category</a>
                 
                    <a class="blog-nav-item pull-right" href=<?php $_SERVER['SERVER_NAME']; ?>"/blog/index.php">Visit blog</a>
                </nav>
            </div>
        </div>

        <div class="container">

            <div class="blog-header">
                <h1 class="blog-title">Admin area</h1>

            </div>

            <div class="row">

                <div class="col-sm-8 blog-main">
                    <?php if (isset($_GET['msg'])) {
                        ?>
                    <div class="alert alert-success">
                        <?php echo htmlentities($_GET['msg']); ?>
                    </div>
                        <?php
                    }
                    ?>