<?php
include_once ('../config.php');


    $username = '';
    $password = '';

    $username=$_GET['username'];
    $password=md5($_GET['password']);

    if (isset($username)){
        $qry="SELECT * FROM user_management WHERE username = '".$username."' AND password = '".$password."'";
        //echo $qry;
        $res = mysqli_query($conn, $qry);
        
        if($row=mysqli_fetch_array($res)){
            $arr =array('result' => 'Success',
                        'userid' => $row['id'],
						'regalname' => $row['regalname'],
                        'username' => $row['username'],
                        'email' => $row['email'],
                        'usertype' => $row['usertype'],
						'group' => $row['group']	//	Group
                        );
        }else{
            $arr =array('Result' => 'Fail');
        }

        echo json_encode($arr);
    }
        
    mysqli_close($conn);

?>