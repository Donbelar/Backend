<?php
include_once ('config.php');


    $usergroup = '';
    

    $usergroup =$_GET['usergroup'];

    if (isset($usergroup)){
        $qry="SELECT * FROM event_management WHERE group_name = '".$usergroup."'";
        //echo $qry;
        $res = mysqli_query($conn, $qry);

		$arr=array();
			
		$i=0;
		while($row = mysqli_fetch_array($res)){
			
			$arr[$i]['userid'] = $row['id'];
			$arr[$i]['event_title'] = $row['event_title'];
			$arr[$i]['event_description']=$row['event_description'];
			$arr[$i]['start_date']=$row['event_start'];
			$arr[$i]['start_time']=$row['start_time'];
			$arr[$i]['end_date']=$row['event_end'];
			$arr[$i]['end_time']=$row['end_time'];
			$arr[$i]['location_street']=$row['location_street'];
			$arr[$i]['location_city']=$row['location_city'];
			$arr[$i]['location_state']=$row['location_state'];
			$arr[$i]['location_country']=$row['location_country'];
			$arr[$i]['sponsor_name']=$row['sponsor_name'];
			$arr[$i]['creator']=$row['creator'];
			
			$i++;
		}

		$arr1 =array('result' => $arr);

		echo json_encode($arr1);
    }
        
    mysqli_close($conn);
?>