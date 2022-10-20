<?php include "module.php" ;

$connection = connect_to_db("test");

extract($_POST);

if(isset($_POST["comment"])){
    
    $query = "INSERT INTO comment (comment) VALUES ('$comment')";
    if(!mysqli_query($connection, $query)){
        printf("Error: %s\n", mysqli_error($connection));
        exit();
    }

}



?>