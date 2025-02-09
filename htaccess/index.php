<?php
    include('db_connect.php');
    
    $sql = 'SELECT GAS FROM DATA WHERE ID=1';
    $result = mysqli_query($conn, $sql);
    $gas_col = mysqli_fetch_assoc($result);

    echo "<h1> Smoke Sensor: ";
    echo $gas_col['GAS'];
    echo "</h1>";

    $sql = 'SELECT TEMP FROM DATA WHERE ID=1';
    $result = mysqli_query($conn, $sql);
    $TEMP_col = mysqli_fetch_assoc($result);

    echo "<h1> Temparature Sensor: ";
    echo $TEMP_col['TEMP'];
	echo " Degree C";
    echo "</h1>";   

    $sql = 'SELECT SOUND FROM DATA WHERE ID=1';
    $result = mysqli_query($conn, $sql);
    $sound_col = mysqli_fetch_assoc($result);

    echo "<h1> Sound Sensor: ";
    if($sound_col['SOUND'] == 1) echo "Noise Detected..";
    else echo "GOOD condition.";
    echo "</h1>";

    $sql = 'SELECT R1 FROM DATA WHERE ID=1';
    $result = mysqli_query($conn, $sql);
    $R1_col = mysqli_fetch_assoc($result);

    echo "<h1> Relay 1: ";
    if($relay1_col['R1'] == 1) echo "ON.";
    else echo "OFF.";
    echo "</h1>";

    $sql = 'SELECT R2 FROM DATA WHERE ID=1';
    $result = mysqli_query($conn, $sql);
    $R2_col = mysqli_fetch_assoc($result);

    echo "<h1> Relay 2: ";
    if($relay2_col['R2'] == 1) echo "ON.";
    else echo "OFF.";
    echo "</h1>";

    $sql = 'SELECT R3 FROM DATA WHERE ID=1';
    $result = mysqli_query($conn, $sql);
    $R3_col = mysqli_fetch_assoc($result);

    echo "<h1> Relay 3: ";
    if($relay3_col['R3'] == 1) echo "ON.";
    else echo "OFF.";
    echo "</h1>";

    $conn->close();
?>