<?php

    require_once("connection.php");
    $Id = $_GET["id"];
    $delete = "DELETE FROM `add_bank` WHERE bank_id = '$Id'";
    mysqli_query($conn,$delete);
    header("location:manage_bank.php");

?>
