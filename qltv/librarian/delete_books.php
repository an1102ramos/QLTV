<?php
include('dbcon.php');
$id=$_GET['id'];
mysqli_query($conn,"update book set status = 'Kho' where book_id='$id'")or die(mysqli_error());
header('location:books.php');
?>