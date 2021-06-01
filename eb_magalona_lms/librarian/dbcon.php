<?php
header("Content-type: text/html; charset=utf-8");
$conn = mysqli_connect('localhost','root','','eb_lms') or die(mysqli_error());
mysqli_set_charset($conn, 'UTF8');
?>