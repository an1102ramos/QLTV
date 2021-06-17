<?php 
include('dbcon.php');
if (isset($_POST['submit'])){
$id=$_POST['id'];
$book_title=addslashes($_POST['book_title']);
$category_id=addslashes($_POST['category_id']);
$author=addslashes($_POST['author']);
$book_copies=addslashes($_POST['book_copies']);
$book_pub=addslashes($_POST['book_pub']);
$publisher_name=addslashes($_POST['publisher_name']);
$isbn=addslashes($_POST['isbn']);
$copyright_year=addslashes($_POST['copyright_year']);

$status=addslashes($_POST['status']);




mysqli_query($conn,"update book set book_title='$book_title',category_id='$category_id',author='$author'
,book_copies = '$book_copies',book_pub = '$book_pub',publisher_name = '$publisher_name',isbn = '$isbn',copyright_year='$copyright_year',status='$status' where book_id='$id'")or die(mysqli_error());
								
								
 header('location:books.php');
}
?>	