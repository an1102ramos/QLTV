<?php 
include('dbcon.php');
if (isset($_POST['submit'])){
$id=$_POST['id'];
$firstname=addslashes($_POST['firstname']);
$lastname=addslashes($_POST['lastname']);
$gender=addslashes($_POST['gender']);
$address=addslashes($_POST['address']);
$contact=addslashes($_POST['contact']);
$type=addslashes($_POST['type']);
$year_level=addslashes($_POST['year_level']);
$status=addslashes($_POST['status']);

mysqli_query($conn,"update member set firstname='$firstname',lastname='$lastname',gender='$gender',address = '$address',contact = '$contact',type = '$type',year_level = '$year_level',status = '$status' where member_id='$id'")or die(mysqli_error());
								
								
header('location:member.php');
}
?>	