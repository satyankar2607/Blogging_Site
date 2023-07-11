<?php

$id = $_GET['id'];

if($_SERVER["REQUEST_METHOD"] == "POST"){
    
    $servername = "localhost";
    $username = "root";
    $password = "";
    $database = "darx";
    $conn = mysqli_connect($servername, $username, $password, $database);

    $blogdata = $_POST["blogdata"];
    $id = $_POST["sno"];

    $sql = "INSERT INTO `blogs` (`id`, `blogdata`) VALUES ('$id', '$blogdata')";
    $result = mysqli_query($conn, $sql);

    header("location: your_blogs.php?id=$id");


}
?>

<h2>Write your blog here:</h2>

<form action = "/satya/writer.php" method = "POST">
    <textarea name="blogdata" rows="25" cols="100"></textarea>
    <input type="hidden" name="sno" value=<?php echo "$id"; ?>>
<input type="submit" value="SUBMIT" class="btn btn-primary">
</form>