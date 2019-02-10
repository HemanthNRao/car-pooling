<?php
/*
 * Common functions used throughout Codejudge
 */
session_start();

// connects to the database
function connectdb() {
  include('dbinfo.php');
  $con=mysqli_connect($host,$user,$password);
  if (!$con) {
		die('Could not connect to mysqli: ' . mysqli_error());
	}
  mysqli_select_db($con,$database) or die('Error connecting to database. '. mysqli_error());
    return $con;
}

// generates a random number.
function randomNum($length){
  $rangeMin = pow(36, $length-1);
  $rangeMax = pow(36, $length)-1;
  $base10Rand = mt_rand($rangeMin, $rangeMax);
  $newRand = base_convert($base10Rand, 10, 36);
  return $newRand;
}

// checks if any user is logged in
function loggedin() {
  return isset($_SESSION['username']);
}
function getUserid(){
  $con=connectdb();    
  $emailid=$_SESSION['username'];
  $query="SELECT uid,name from users where email='".$emailid."'";
  $result = mysqli_query($con,$query);
  $fields = mysqli_fetch_array($result);
  $uid=$fields['uid'];
  return $uid;
}
function name(){
  $con=connectdb();
  $emailid=$_SESSION['username'];
  $query="SELECT uid,name from users where email='".$emailid."'";
  $result = mysqli_query($con,$query);
  $fields = mysqli_fetch_array($result);
  $uid=$fields['name'];
  return $uid;
}

function getName($uid){
  $con=connectdb();
  $query="SELECT name from users WHERE uid=".$uid;
  $res=mysqli_query($con,$query);
  $result=mysqli_fetch_array($res, 0);
  return $result;
}
?>