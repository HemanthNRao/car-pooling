<?php
require_once('functions.php');
$con=connectdb();
                 
$userid = $_POST["uid"];
$from = $_POST["from"];
$to = $_POST["to"];
$cid = $_POST["cid"];
$query = 'SELECT * FROM offers where id="'.$cid.'"';
$result = mysqli_query($con,$query) or die("error!!!".mysqli_error()) ;
$row = mysqli_fetch_array($result);
$timestamp= date("Y-m-d H:i:s");

$sender = $row["uid"];
//pooler waiting for approval from owner

$query = 'INSERT INTO notifications (sender, receiver, type ,cid, timestamp) VALUES("'.$userid. '","'. $userid .'","4","'. $cid . '","' . $timestamp .'")';  

$result = mysqli_query($con,$query) or die("error23!".mysqli_error($con))  ;

//sent for appoval to car owner
$query = 'INSERT INTO notifications (sender, receiver, type ,cid, timestamp) VALUES("'.$userid. '","'. $sender .'","1","'. $cid . '","' . $timestamp .'")';  

$result = mysqli_query($con,$query) or die("error!45!")  ;
header("Location: index.php?success=1");



?>

