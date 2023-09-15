<?php

    require_once("../connection.php");


    // create_staff_profile.php

    if(isset($_POST["add_provider_btn"]))
    {
        
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
        $confirm = $_POST["confirm"];
        
        
        if($password === $confirm)
        {

            $insert = "INSERT INTO `users`(`first_name`, `last_name`, `phone`, `email`, `password`,`address`, `address_line_2`, `city`,
            `state`, `zipcode`, `role_id`) VALUES ('$fname','$lname','$phone','$email','$password','$address','$address2','$city',
            '$state','$zip',2)";
            $excec = mysqli_query($conn,$insert);
            if($excec)
            {
                ?>
                    <script>
                        alert("Rider has been Added");window.location.href = "../add_provider.php";
                    </script>
                <?php
            }
            else
            {
                echo mysqli_error($conn);
            }
            
        }
        else
        {
            ?>
                    <script>
                        alert("Password and Confirm Password is not match");window.location.href = "../add_provider.php";
                    </script>
                <?php
        }
        

    }






     // add_skills_btn.php

     if(isset($_POST["add_skills_btn"]))
     {
         $skill = $_POST["skill"];
 
         $insert = "INSERT INTO `skills`(`skill_name`) VALUES ('$skill')";
         $excec = mysqli_query($conn,$insert);
         if($excec)
         {
             ?>
                 <script>
                     alert("Record has been Inserted");window.location.href = "../add_skills.php";
                 </script>
             <?php
         }
         else
         {
             echo mysqli_error($conn);
         }
         
 
     }
     
     
     // add_bank_btn

     if(isset($_POST["add_bank_btn"]))
     {
         $bank_name = $_POST["bank_name"];
         $iban_number = $_POST["iban_number"];
 
         $insert = "INSERT INTO `add_bank`(`bank_name`,`iban_number`) VALUES ('$bank_name','$iban_number')";
         $excec = mysqli_query($conn,$insert);
         if($excec)
         {
             ?>
                 <script>
                     alert("Bank has been Added");window.location.href = "../add_bank.php";
                 </script>
             <?php
         }
         else
         {
             echo mysqli_error($conn);
         }
         
 
     }
     
     
          // add_work_category_btn

     if(isset($_POST["add_work_category_btn"]))
     {
         $icon_name = $_POST["icon_name"];
         $icon_type = $_POST["icon_type"];
         $work_title = $_POST["work_title"];
 
         $insert = "INSERT INTO `menu_items`(`icon_name`, `icon_type`, `title`) VALUES ('$icon_name','$icon_type','$work_title')";
         $excec = mysqli_query($conn,$insert);
         if($excec)
         {
             ?>
                 <script>
                     alert("Work Category has been Added");window.location.href = "../add_work_category.php";
                 </script>
             <?php
         }
         else
         {
             echo mysqli_error($conn);
         }
         
 
     }
     
     
     
         // add_sub_admin_btn

    if(isset($_POST["add_sub_admin_btn"]))
    {
        
        $fname = $_POST["fname"];
        $lname = $_POST["lname"];
        $email = $_POST["email"];
        $phone = $_POST["phone"];
        $password = $_POST["password"];
      
        

        $insert = "INSERT INTO `users`(`first_name`, `last_name`, `phone`, `email`, `password`,`role_id`) VALUES 
        ('$fname','$lname','$phone','$email','$password',3)";
        $excec = mysqli_query($conn,$insert);
        if($excec)
        {
            ?>
                <script>
                    alert("Sub Admin has been Added");window.location.href = "../add_sub_admin.php";
                </script>
            <?php
        }
        else
        {
            echo mysqli_error($conn);
        }
            
        

    }





?>