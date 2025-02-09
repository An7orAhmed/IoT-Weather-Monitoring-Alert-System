<?php
    include('db_connect.php');
    echo "Connected to Database successfully. ";

   mysqli_query($conn, "DELETE FROM DATA WHERE ID=1"); 
   $sql = "INSERT INTO DATA (ID, GAS, TEMP, SOUND, R1, R2, R3) VALUES ('1','".$_GET["g_value"]."','".$_GET["t_value"]."','".$_GET["s_value"]."','".$_GET["r1"]."','".$_GET["r2"]."','".$_GET["r3"]."')";    
    
    if (mysqli_query($conn, $sql)) {
       echo "New record created successfully.";
    } 
    else {
       echo "Error: " . $sql . "" . mysqli_error($conn);
    }

    $sql = 'SELECT GAS FROM DATA WHERE ID=1';
    $result = mysqli_query($conn, $sql);
    $gas_col = mysqli_fetch_assoc($result);

    $sql = 'SELECT TEMP FROM DATA WHERE ID=1';
    $result = mysqli_query($conn, $sql);
    $temp_col = mysqli_fetch_assoc($result);

    $sql = 'SELECT SOUND FROM DATA WHERE ID=1';
    $result = mysqli_query($conn, $sql);
    $sound_col = mysqli_fetch_assoc($result);
	
	$sql = 'SELECT R1 FROM DATA WHERE ID=1';
    $result = mysqli_query($conn, $sql);
    $R1_col = mysqli_fetch_assoc($result);
	
	$sql = 'SELECT R2 FROM DATA WHERE ID=1';
    $result = mysqli_query($conn, $sql);
    $R2_col = mysqli_fetch_assoc($result);
	
	$sql = 'SELECT R3 FROM DATA WHERE ID=1';
    $result = mysqli_query($conn, $sql);
    $R3_col = mysqli_fetch_assoc($result);

    $conn->close();
?> 

<!DOCTYPE HTML>
<html>
   <head>
      <title>IoT Home Report system</title>
   </head>

   <body>
      <h1>Smoke Sensor: <?=$gas_col['GAS'];?></h1>
      <h1>Temparature Sensor: <?=$temp_col['TEMP'];?></h1>
      <h1>Sound Sensor: <?=$sound_col['SOUND'];?></h1>
	  <h1>Relay 1: <?=$R1_col['R1'];?></h1>
	  <h1>Relay 2: <?=$R2_col['R2'];?></h1>
	  <h1>Relay 3: <?=$R3_col['R3'];?></h1>
   </body>
</html>