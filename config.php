<?php

define('DBHOST','localhost');
define('DBUSER','root');
define('DBPASS','');
define('DBNAME','rajiv');

$conn = mysqli_connect (DBHOST, DBUSER, DBPASS, DBNAME);
    if(!$conn){
        die( "Sorry! There seems to be a problem connecting to our database.");
    }


?>