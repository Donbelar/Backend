<?php
include_once ('config.php');
	
	$title = '';
    $description = '';
	$startdate = '';
	$starttime = '';
    $enddate = '';
	$endtime = '';
	$street = '';
	$city = '';
	$state = '';
	$country = '';
	$sponsorname = '';
	$usergroup = '';
	$username = '';
	$creator = '';
	
	$title = $_POST['title'];
    $description =$_POST['description'];
	$startdate = $_POST['startdate'];
	$starttime = $_POST['starttime'];
	$enddate = $_POST['enddate'];
	$endtime = $_POST['endtime'];
	$street = $_POST['street'];
	$city = $_POST['city'];
	$state = $_POST['state'];
	$country = $_POST['country'];
	$sponsorname = $_POST['sponsorname'];
	$usergroup = $_POST['usergroup'];
	$creator = $_POST['username'];
	
   
    if (isset($title)){
        $qry="INSERT INTO event_management (
			event_title,
			event_description,
			event_start,
			start_time,
			event_end,
			end_time,
			location_street,
			location_city,
			location_state,
			location_country,
			sponsor_name,
			group_name,
			creator
			) VALUES (
			'".$title."',
			'".$description."',
			'".$startdate."',
			'".$starttime."',
			'".$enddate."',
			'".$endtime."',
			'".$street."',
			'".$city."',
			'".$state."',
			'".$country."',
			'".$sponsorname."',
			'".$usergroup."',
			'".$creator."'
		)";
        
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