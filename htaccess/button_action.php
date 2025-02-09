<?php
    include('db_connect.php');

    $sql = 'SELECT RELAY_1 FROM DATA  WHERE ID=2';
    $result = mysqli_query($conn, $sql);
    $relay1_col = mysqli_fetch_assoc($result);

    $sql = 'SELECT RELAY_2 FROM DATA  WHERE ID=2';
    $result = mysqli_query($conn, $sql);
    $relay2_col = mysqli_fetch_assoc($result);

    $sql = 'SELECT RELAY_3 FROM DATA  WHERE ID=2';
    $result = mysqli_query($conn, $sql);
    $relay3_col = mysqli_fetch_assoc($result);

   $sql = 'SELECT RELAY_4 FROM DATA  WHERE ID=2';
    $result = mysqli_query($conn, $sql);
    $relay4_col = mysqli_fetch_assoc($result);

    if(isset($_POST['relay1'])){
       if($relay1_col["RELAY_1"] == 0)
          mysqli_query($conn, "UPDATE DATA SET RELAY_1='1' WHERE RELAY_1=0");
       else
          mysqli_query($conn, "UPDATE DATA SET RELAY_1='0' WHERE RELAY_1=1");
    }

    if(isset($_POST['relay2'])){
       if($relay2_col["RELAY_2"] == 0)
          mysqli_query($conn, "UPDATE DATA SET RELAY_2='1' WHERE RELAY_2=0");
       else
          mysqli_query($conn, "UPDATE DATA SET RELAY_2='0' WHERE RELAY_2=1");
    }

    if(isset($_POST['relay3'])){
       if($relay3_col["RELAY_3"] == 0)
          mysqli_query($conn, "UPDATE DATA SET RELAY_3='1' WHERE RELAY_3=0");
       else
          mysqli_query($conn, "UPDATE DATA SET RELAY_3='0' WHERE RELAY_3=1");
    }

    if(isset($_POST['relay4'])){
       if($relay4_col["RELAY_4"] == 0)
          mysqli_query($conn, "UPDATE DATA SET RELAY_4='1' WHERE RELAY_4=0");
       else
          mysqli_query($conn, "UPDATE DATA SET RELAY_4='0' WHERE RELAY_4=1");
    }
    header("Refresh:0; url=index.php");
?>