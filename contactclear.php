<?php

//MySql
$db_username    = 'root';
$db_password    = '123';
$db_name                = 'Shop';
$db_host                = 'localhost';

//connection to MySql
$mysqli = new mysqli($db_host, $db_username, $db_password,$db_name);
if ($mysqli->connect_error) {
    die('Error : ('. $mysqli->connect_errno .') '. $mysqli->connect_error);
}

$mysqli->query("DELETE FROM contact");
mysqli_close($mysqli);
?>

