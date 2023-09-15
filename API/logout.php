<?php
if($_POST['token'] == 'as23rlkjadsnlkcj23qkjnfsDKJcnzdfb3353ads54vd3favaeveavgbqaerbVEWDSC'){
include("connection.php");
$user_id = $_POST['user_id'];

$check_user = "select * from `users` WHERE `id` = '$user_id'";
$exec_user = mysqli_query($conn,$check_user);
$rows = mysqli_num_rows($exec_user);
if($rows > 0)
{
    $sql = "UPDATE `users` SET `notification_token`= '' WHERE `id` = '$user_id'";
    $exec_sql = mysqli_query($conn,$sql);
    
    if($exec_sql){
          $data = ["status"=>true,
                "Response_code"=>200,
                "Message"=>"Logout successfully!"];
      echo json_encode($data); 
    }else{
          $data = ["status"=>false,
                "Response_code"=>202,
                "Message"=>"Something went wrong, Please try later!"];
      echo json_encode($data); 
    }
}
else
{
    $data = ["status"=>false,
            "Response_code"=>202,
            "Message"=>"user does'nt exist"];
  echo json_encode($data);  
}
    

}
else
{
  $data = ["status"=>false,
            "Response_code"=>403,
            "Message"=>"Access denied"];
  echo json_encode($data);          
}