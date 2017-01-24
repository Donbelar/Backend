<?php
include_once ('../config.php');
	
	$regalname = '';
    $username = '';
	$email = '';
    $password = '';
	
	$regalname = $_POST['regalname'];
    $username=$_POST['username'];
	$email = $_POST['email'];
    $password=md5($_POST['password']);

    if (isset($username)){
        $qry="INSERT INTO user_management (regalname, username, email, password) 
		VALUES ('".$regalname."','".$username."','".$email."','". $password."')";
        //echo $qry;
        if (mysqli_query($conn, $qry)){
		
			$arr =array('Result' => 'Success');
		
		}else{
			
			$arr =array('Result' => 'Fail');
		
		};
        echo json_encode($arr);
    }
        
    mysqli_close($conn);

?>