<?php


if($_POST['token'] == 'as23rlkjadsnlkcj23qkjnfsDKJcnzdfb3353ads54vd3favaeveavgbqaerbVEWDSC')
{
    
    include('connection.php');

    $user_id = $_POST['user_id'];
    $amount = $_POST['amount'];
    $type = $_POST['type'];


  if (empty($user_id))
  {
      
        $data = [
        "status"=>false,
        "message"=>"User id is required!",
             ];
         echo json_encode($data); 
         
  }
  else
  {
      
        $sql = "SELECT `Wallaet_Balance` FROM `users` WHERE id = '$user_id'"; 
        $exec_sql = mysqli_query($conn,$sql);
        $row_sql = mysqli_num_rows($exec_sql);
        
        if($row_sql > 0)
        {
            
            $Data = mysqli_fetch_array($exec_sql);
            $current_balance = $Data['Wallaet_Balance'];
            
            
            $newamount = $current_balance + $amount;
            $unique_id = rand()."_".date('ydmis');
            
            
            $insert = "UPDATE `users` SET `Wallaet_Balance`= $newamount WHERE id = $user_id;";
            $insert .= "INSERT INTO `transaction`(`user_id`, `amount`, `transaction_id`, `type`) VALUES ('$user_id','$amount','$unique_id','$type')";
            $exec_insert = mysqli_multi_query($conn,$insert);
            if($exec_insert)
            {
            
                $temp = 
                [
                    "u_id"=>$user_id,
                    "newamount"=>$newamount,
                    "unique_id"=>$unique_id
                ];
                
                $data = ["status"=>true,
                    "response_code"=>200,
                    "message"=>"Add transaction successfull",
                    "data"=>$temp
                    ];
                     echo json_encode($data);
            }
            else
            {
                $data = ["status"=>false,
                "response_code"=>404,
                "message"=>"something went wrong!"];
                 echo json_encode($data);
            }
          
            
        }
        else
        {
             $data = ["status"=>false,
                "response_code"=>202,
                "message"=>"User does'nt exist!"];
                 echo json_encode($data); 
        }
        
              
              

}
      
  
}
else
{
    
      $data = ["status"=>false,
                "Response_code"=>403,
                "message"=>"Access denied"];
      echo json_encode($data);      
      
}
