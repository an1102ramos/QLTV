<?php 
include('dbcon.php');
if (isset($_POST['submit'])){
$book_title=addslashes($_POST['book_title']);
$category_id=addslashes($_POST['category_id']);
$author=addslashes($_POST['author']);
$book_copies=addslashes($_POST['book_copies']);
$book_pub=addslashes($_POST['book_pub']);
$publisher_name=addslashes($_POST['publisher_name']);
$isbn=addslashes($_POST['isbn']);
$copyright_year=addslashes($_POST['copyright_year']);

$status=addslashes($_POST['status']);




								
mysqli_query($conn,"insert into book (book_title,category_id,author,book_copies,book_pub,publisher_name,isbn,copyright_year,date_added,status)
 values('$book_title','$category_id','$author','$book_copies','$book_pub','$publisher_name','$isbn','$copyright_year',NOW(),'$status')")or die(mysqli_error());
 
 
header('location:books.php');
}
?>	