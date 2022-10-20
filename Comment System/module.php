<?php

function connect_to_db($db){
    

        $connection = mysqli_connect("localhost", "root", "", "$db");   
        
    if(!$connection){
            echo "Connection Failed";
        }
    
    return $connection;
}

function get_answer($qid, $connection){
    
    //$connection = connect_to_db("test");
    $answer = array(); 
    $query = "SELECT * FROM answer WHERE qid = $qid";
    $result = mysqli_query($connection, $query);
    if(!$result){
        echo "query failed";
    }
    
    while($row = mysqli_fetch_array($result)){
        array_push($answer, $row['answer']);
    }
    
    return $answer;
    
    
    
}

function get_user_id($table, $id, $connection){
    
 //   $connection = connect_to_db("test");
    $array = array(); 
    $query = "SELECT userid FROM $table WHERE qid = $id";
    $result = mysqli_query($connection, $query);
    if(!$result){
        echo "query failed";
    }
    
    while($row = mysqli_fetch_array($result)){
        array_push($array, $row[0]);
    }
    
    return $array;
    
    
}

function get_username($userid, $connection){
 //   $connection = connect_to_db("test");
    
    $query = "SELECT user FROM login WHERE id = $userid";
    $result = mysqli_query($connection, $query);
    if(!$result){
        echo "query failed";
    }
    
    $row = mysqli_fetch_array($result);
    
    return $row[0];

}

//It should be changed to "fetch userID from email"

function get_id_from_name($name, $connection){
    
  //      $connection = connect_to_db("test");
    
    $query = "SELECT id FROM login WHERE user = '$name'";
    $result = mysqli_query($connection, $query);
    if(!$result){
        printf("Error: %s\n", mysqli_error($connection));
        exit();
    }
    
    
    $row = mysqli_fetch_array($result);
    
    return $row[0];

}

function add_question($id, $question, $connection){
    
    $query = "INSERT INTO question (question, userid) VALUES ('$question', $id)";
    if(!mysqli_query($connection, $query)){
        printf("Error: %s\n", mysqli_error($connection));
        exit();
        
        return false;
    }
    return true;
    
}
    


?>