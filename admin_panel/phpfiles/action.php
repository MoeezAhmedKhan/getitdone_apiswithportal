<?php 

require_once("../connection.php");

// update_provider

if(isset($_POST["update_provider_btn"]))
{
    $id = $_POST["id"];       
    $fname = $_POST["fname"];
    $lname = $_POST["lname"];
    $email = $_POST["email"];
    $phone = $_POST["phone"];
    $address = $_POST["address"];
    $address2 = $_POST["address2"];
    $city = $_POST["city"];
    $state = $_POST["state"];
    $zip = $_POST["zip"];
    $password = $_POST["password"];
    $status = $_POST["status"];
        
        
    $update = "UPDATE `users` SET `first_name`= '$fname',`last_name`= '$lname',`phone`= '$phone'
    ,`email`= '$email',`password`= '$password',`address`= '$address',`address_line_2`= '$address2',`city`= '$city',
    `state`= '$state',`zipcode`= '$zip',`status`= '$status'  WHERE id = '$id'";
    $excec = mysqli_query($conn,$update);
    if($excec)
    {
        ?>
            <script>
                alert("Rider has been Updated");window.location.href = "../manage_provider.php";
            </script>
        <?php
    }
    else
    {
        echo mysqli_error($conn);
    }
            
}




// update_task

// if(isset($_POST["update_task_btn"]))
// {
//     $id = $_POST["id"];       
//     $fname = $_POST["fname"];
//     $lname = $_POST["lname"];
//     $droploc = $_POST["droploc"];
        
        
//     $update = "UPDATE `task` SET `id`=[value-1],`user_id`= '',`dropoff_location`= '' WHERE ";
//     $excec = mysqli_query($conn,$update);
//     if($excec)
//     {
//         >
//             <script>
//                 alert("Rider has been Updated");window.location.href = "../manage_provider.php";
//             </script>
//         <?php
//     }
//     else
//     {
//         echo mysqli_error($conn);
//     }
            
// }




// update_work_category_btn

if(isset($_POST["update_work_category_btn"]))
{
    $id = $_POST["id"];       
    $icon_name = $_POST["icon_name"];
    $icon_type = $_POST["icon_type"];
    $work_title = $_POST["work_title"];

    
    $update = "UPDATE `menu_items` SET `icon_name`= '$icon_name',`icon_type`= '$icon_type',`title`= '$work_title' WHERE `id` = '$id'";
    $excec = mysqli_query($conn,$update);
    if($excec)
    {
        ?>
            <script>
                alert("Work Category has been Updated");window.location.href = "../manage_work_category.php";
            </script>
        <?php
    }
    else
    {
        echo mysqli_error($conn);
    }
            
}


// update_task

if(isset($_POST["update_bank_btn"]))
{
    $id = $_POST["id"];       
    $bankname = $_POST["bankname"];
    $iban_number = $_POST["iban_number"];
        
        
    $update = "UPDATE `add_bank` SET `bank_name`= '$bankname',`iban_number` = '$iban_number' WHERE `bank_id`= '$id'";
    $excec = mysqli_query($conn,$update);
    if($excec)
    {
        ?>
            <script>
                alert("Bank has been Updated");window.location.href = "../manage_bank.php";
            </script>
        <?php
    }
    else
    {
        echo mysqli_error($conn);
    }
            
}



// update_update_share_percentage

if(isset($_POST["update_share_percentage"]))
{
    $id = $_POST["id"];       
    $share_percentage = floatval($_POST["share_percentage"]);
        
    $update = "UPDATE `rider_share` SET `share_percentage`= '$share_percentage' WHERE `id`= $id";
    $excec = mysqli_query($conn,$update);
    if($excec)
    {
        ?>
            <script>
                alert("Rider Share has been Updated");window.location.href = "../manage_rider_share.php";
            </script>
        <?php
    }
    else
    {
        echo mysqli_error($conn);
    }
            
}



// update_customer_btn

if(isset($_POST["update_customer_btn"]))
{
    $id = $_POST["id"];       
    $fname = $_POST["fname"];
    $lname = $_POST["lname"];
    $email = $_POST["email"];
    $phone = $_POST["phone"];
    $address = $_POST["address"];
    $city = $_POST["city"];
    $state = $_POST["state"];
    $zip = $_POST["zip"];
    $password = $_POST["password"];
    $status = $_POST["status"];
        
        
    $update = "UPDATE `users` SET `first_name`= '$fname',`last_name`= '$lname',`phone`= '$phone'
    ,`email`= '$email',`password`= '$password',`address`= '$address',`city`= '$city',
    `state`= '$state',`zipcode`= '$zip',`status`= '$status'  WHERE id = '$id'";
    $excec = mysqli_query($conn,$update);
    if($excec)
    {
        ?>
            <script>
                alert("Customer has been Updated");window.location.href = "../manage_customer.php";
            </script>
        <?php
    }
    else
    {
        echo mysqli_error($conn);
    }
            
}




// update_sub_admin_btn

if(isset($_POST["update_sub_admin_btn"]))
{
    $id = $_POST["id"];       
    $fname = $_POST["fname"];
    $lname = $_POST["lname"];
    $email = $_POST["email"];
    $phone = $_POST["phone"];
    $password = $_POST["password"];
    $status = $_POST["status"];
        
        
    $update = "UPDATE `users` SET `first_name`= '$fname',`last_name`= '$lname',`phone`= '$phone'
    ,`email`= '$email',`password`= '$password',`status`= '$status'  WHERE id = '$id'";
    $excec = mysqli_query($conn,$update);
    if($excec)
    {
        ?>
            <script>
                alert("Sub Admin has been Updated");window.location.href = "../manage_sub_admin.php";
            </script>
        <?php
    }
    else
    {
        echo mysqli_error($conn);
    }
            
}





?>