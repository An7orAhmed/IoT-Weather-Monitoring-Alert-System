<?php
    include('db_connect.php');

    $sql = "UPDATE KMTStockManagement SET state=1 WHERE activationkey='".$_GET["key"]."'";
    $result = mysqli_query($conn, $sql);
    $show = mysqli_fetch_assoc($result);
	
    $conn->close();
?>