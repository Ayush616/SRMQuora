<?php include "module.php";

$connection = connect_to_db("test");
$query = "SELECT * FROM comment";
$result = mysqli_query($connection, $query);

while($row = mysqli_fetch_array($result)){
    echo $row["comment"]. "<br>";
}

?>