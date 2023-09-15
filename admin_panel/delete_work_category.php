<?php

    require_once("connection.php");
    $Id = $_GET["id"];

    $delete = "DELETE FROM `menu_items` WHERE id = '$Id'";
    mysqli_query($conn,$delete);
    header("location:manage_work_category.php");

?>
