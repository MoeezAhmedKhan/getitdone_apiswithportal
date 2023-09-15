<?php

require_once("connection.php");
if($_POST['token'] == 'as23rlkjadsnlkcj23qkjnfsDKJcnzdfb3353ads54vd3favaeveavgbqaerbVEWDSC')
{
    $rider_id = $_POST['rider_id'];
    $analytics_array = array();
    $mod_date = $_POST['mod_date'];
    
    if($mod_date == 'All time'){
    $sql_total_requests = "SELECT COUNT(`id`) as total_requests FROM `task_log` WHERE  `rider_id` = '$rider_id'";
    $exec_total_requests = mysqli_query($conn, $sql_total_requests);
    $result_total_requests = mysqli_fetch_array($exec_total_requests);
    

    $sql_total_revenue = "SELECT SUM(`amount`) as total_revenue FROM `revenue` WHERE `rider_id` =  '$rider_id'";
    $exec_total_revenue = mysqli_query($conn, $sql_total_revenue);
    $result_total_revenue = mysqli_fetch_array($exec_total_revenue);
    
    
    $sql_earned_amount = "SELECT  SUM(`amount`) as earning FROM `rider_earning` WHERE `rider_id` = '$rider_id'";
    $exec_earned_amount = mysqli_query($conn, $sql_earned_amount);
    $result_earned_amount = mysqli_fetch_array($exec_earned_amount);
    
        $temp = [
            "total_requests"=>$result_total_requests['total_requests'],
            "total_revenue"=>$result_total_revenue['total_revenue'] != null ? $result_total_revenue['total_revenue'] : '0',
            "total_earned"=>$result_earned_amount['earning'] != null ? $result_earned_amount['earning'] : '0' 
            ];
            
            array_push($analytics_array , $temp);
    
        $data = 
    [
                
        "status"=>true,
        "response_code"=>200,
        "message"=>"Analytics fetched sucessfully.",
        "data"=>$analytics_array
                
    ];
    echo json_encode($data);
    
    }else if($mod_date == '7'){
        
    $today = date("Y-m-d H:i:s");
    $past7 = date('Y-m-d H:i:s', strtotime('-6 days'));
        
    $sql_total_requests = "SELECT COUNT(`id`) as total_requests FROM `task_log` WHERE  `rider_id` = '$rider_id' AND
      `created_at` BETWEEN '$today' AND '$past7'";
    $exec_total_requests = mysqli_query($conn, $sql_total_requests);
    $result_total_requests = mysqli_fetch_array($exec_total_requests);
    

    $sql_total_revenue = "SELECT SUM(`amount`) as total_revenue FROM `revenue` WHERE `rider_id` =  '$rider_id' AND 
                                `created_at` BETWEEN '$today' AND '$past7'";
    $exec_total_revenue = mysqli_query($conn, $sql_total_revenue);
    $result_total_revenue = mysqli_fetch_array($exec_total_revenue);
    
    
    $sql_earned_amount = "SELECT  SUM(`amount`) as earning FROM `rider_earning` WHERE `rider_id` = '$rider_id' AND
      `created_at` BETWEEN '$today' AND '$past7'";
    $exec_earned_amount = mysqli_query($conn, $sql_earned_amount);
    $result_earned_amount = mysqli_fetch_array($exec_earned_amount);
    
        $temp = [
            "total_requests"=>$result_total_requests['total_requests'],
            "total_revenue"=>$result_total_revenue['total_revenue'] != null ? $result_total_revenue['total_revenue'] : '0',
            "total_earned"=>$result_earned_amount['earning'] != null ? $result_earned_amount['earning'] : '0' 
            ];
            
            array_push($analytics_array , $temp);
    
        $data = 
    [
                
        "status"=>true,
        "response_code"=>200,
        "message"=>"Analytics fetched sucessfully.",
        "data"=>$analytics_array
                
    ];
    echo json_encode($data);
    }else if($mod_date == '30'){
          $today = date("Y-m-d H:i:s");
    $past7 = date('Y-m-d H:i:s', strtotime('-29 days'));
        
    $sql_total_requests = "SELECT COUNT(`id`) as total_requests FROM `task_log` WHERE  `rider_id` = '$rider_id' AND
      `created_at` BETWEEN '$today' AND '$past7'";
    $exec_total_requests = mysqli_query($conn, $sql_total_requests);
    $result_total_requests = mysqli_fetch_array($exec_total_requests);
    

    $sql_total_revenue = "SELECT SUM(`amount`) as total_revenue FROM `revenue` WHERE `rider_id` =  '$rider_id' AND 
                                `created_at` BETWEEN '$today' AND '$past7'";
    $exec_total_revenue = mysqli_query($conn, $sql_total_revenue);
    $result_total_revenue = mysqli_fetch_array($exec_total_revenue);
    
    
    $sql_earned_amount = "SELECT  SUM(`amount`) as earning FROM `rider_earning` WHERE `rider_id` = '$rider_id' AND
      `created_at` BETWEEN '$today' AND '$past7'";
    $exec_earned_amount = mysqli_query($conn, $sql_earned_amount);
    $result_earned_amount = mysqli_fetch_array($exec_earned_amount);
    
        $temp = [
            "total_requests"=>$result_total_requests['total_requests'],
            "total_revenue"=>$result_total_revenue['total_revenue'] != null ? $result_total_revenue['total_revenue'] : '0',
            "total_earned"=>$result_earned_amount['earning'] != null ? $result_earned_amount['earning'] : '0' 
            ];
            
            array_push($analytics_array , $temp);
    
        $data = 
    [
                
        "status"=>true,
        "response_code"=>200,
        "message"=>"Analytics fetched sucessfully.",
        "data"=>$analytics_array
                
    ];
    echo json_encode($data);
    }
    
}else{
    $data = 
    [
                
        "status"=>false,
        "response_code"=>404,
        "message"=>"acess denied",
                
    ];
    echo json_encode($data);
    
}



?>