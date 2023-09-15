<?php

    require_once("connection.php");
    $Id = $_GET["id"];
    $delete = "DELETE FROM `rider_share` WHERE id = '$Id'";
    mysqli_query($conn,$delete);
    header("location:manage_rider_share.php");

?>
