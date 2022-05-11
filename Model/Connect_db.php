<?php

 $host = "localhost";
 $database = "Darwin_ABC";
 $username = "root";
 $password = "root";
 $port = "8889";

try{
    $db = new PDO('mysql:host= $host;dbname=$database', '$username','$password');
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}
catch(PDOException $e){
    $errors[]="Database error. ". $e->getMessage();
}
?>
