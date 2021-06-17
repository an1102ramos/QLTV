<?php
header("Content-type: text/html; charset=utf-8");
$conn = mysqli_connect('localhost','root','','qltv_an') or die(mysqli_error());
mysqli_set_charset($conn, 'UTF8');
?>