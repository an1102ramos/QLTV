<?php 
include('dbcon.php');
if (isset($_POST['submit'])){
$firstname=addslashes($_POST['firstname']);
$lastname=addslashes($_POST['lastname']);
$gender=addslashes($_POST['gender']);
$address=addslashes($_POST['address']);
$contact=addslashes($_POST['contact']);
$type=addslashes($_POST['type']);
$year_level=addslashes($_POST['year_level']);



								
mysqli_query($conn,"insert into member(firstname,lastname,gender,address,contact,type,year_level) values('$firstname','$lastname','$gender','$address','$contact','$type','$year_level')")or die(mysqli_error());
 
 
header('location:member.php');
}
?>	