<?php
    // Prepare variables for database connection
    $username = "id8176043_iot";  
    $password = "id8176043_iot"; 
    $server = "localhost";
    $database = "id8176043_iot"; 

    // Create connection
    $conn = new mysqli($server, $username, $password, $database);

    // Check connection
    if ($conn->connect_error) {
       die("Connection failed: " . $conn->connect_error);
    } 
?>