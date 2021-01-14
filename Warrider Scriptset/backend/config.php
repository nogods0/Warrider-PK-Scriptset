<?php
$db_username = "..."; 
$db_password = "...";
$db_host = "localhost";
$db_database = "warrider_database";
$db = new PDO("mysql:host=".$db_host.";dbname=".$db_database , $db_username , $db_password);
?>