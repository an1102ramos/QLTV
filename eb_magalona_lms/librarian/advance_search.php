<?php include('header.php'); ?>
<?php include('session.php'); ?>
<?php include('navbar_books.php'); ?>
<?php
$title = $_POST['title'];
/* $category = $_POST['category']; */
$author = $_POST['author'];
?>

    <div class="container">
		<div class="margin-top">
			<div class="row">	
			<div class="span12">	
			   <div class="alert alert-info">
                                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                                    <strong><i class="icon-user icon-large"></i>&nbsp;Bảng sách</strong>
                                </div>
						<!--  -->
								    <ul class="nav nav-pills">
										<li   class="active"><a href="books.php">Tất cả</a></li>
										<li><a href="new_books.php">Sách mới</a></li>
										<li><a href="old_books.php">Sách cũ</a></li>
										<li><a href="lost.php">Sách mất</a></li>
										<li><a href="damage.php">Sách hỏng</a></li>
										<li><a href="sub_rep.php">Sách thay thế</a></li>
									</ul>
						<!--  -->
						<center class="title">
						<h1>Danh sách</h1>
						</center>
                            <table cellpadding="0" cellspacing="0" border="0" class="table  table-bordered" id="example">
								<div class="pull-right">
								<a href="" onclick="window.print()" class="btn btn-info"><i class="icon-print icon-large"></i> Print</a>
								</div>
								<p><a href="add_books.php" class="btn btn-success"><i class="icon-plus"></i>&nbsp;Thêm sách</a></p>
							
                                <thead>
                                    <tr>
									    <th>STT</th>                                 
                                        <th>Tên sách</th>                                 
                                        <th>Danh mục</th>
										<th>Tác giả</th>
										<th class="action">Bản sao</th>
										<th>Nơi xuất bản</th>
										<th>Nhà xuất bản</th>
										<th>Mã sách</th>
										<th>Năm xuất bản</th>
										<th>Ngày thêm</th>
										<th>Trạng thái</th>
										<th class="action">Hoạt động</th>		
                                    </tr>
                                </thead>
                                <tbody>
								 
                                  <?php 
                                  $awhere = "";
                                  if(!empty($title) && !empty($author)){
                                  	$awhere = " and (book_title LIKE  '%$title%' or and author LIKE '%$author%') ";
                                  }elseif(!empty($title)){
                                  	$awhere = " and book_title LIKE  '%$title%' ";
                                  }elseif(!empty($author)){
                                  	$awhere = " and author LIKE  '%$author%' ";
                                  }
				
								  $user_query=mysqli_query($conn,"select * from book where status != 'Archive' $awhere ")or die(mysqli_error());
									while($row=mysqli_fetch_array($user_query)){
									$id=$row['book_id'];  
									$cat_id=$row['category_id'];
									$book_copies = $row['book_copies'];
									
									$borrow_details = mysqli_query($conn,"select * from borrowdetails where book_id = '$id' and borrow_status = 'pending'");
									$row11 = mysqli_fetch_array($borrow_details);
									$count = mysqli_num_rows($borrow_details);
									
									$total =  $book_copies  -  $count; 
									/* $t4otal =  $book_copies  - $borrow_details;
									
									echo $total; */
											$cat_query = mysqli_query($conn,"select * from category where category_id = '$cat_id'")or die(mysqli_error());
											$cat_row = mysqli_fetch_array($cat_query);
									?>
									<tr class="del<?php echo $id ?>">
                                    <td><?php echo $row['book_id']; ?></td>
                                    <td><?php echo $row['book_title']; ?></td>
									<td><?php echo $cat_row ['classname']; ?> </td>
                                    <td><?php echo $row['author']; ?> </td> 
                                    <td class="action"><?php echo /* $row['book_copies']; */   $total;   ?> </td>
                                     <td><?php echo $row['book_pub']; ?></td>
									 <td><?php echo $row['publisher_name']; ?></td>
									 <td><?php echo $row['isbn']; ?></td>
									 <td><?php echo $row['copyright_year']; ?></td>		
									 <td><?php echo $row['date_added']; ?></td>
									 <td><?php echo $row['status']; ?></td>
									<?php include('toolttip_edit_delete.php'); ?>
                                    <td class="action">
                                        <a rel="tooltip"  title="Xóa" id="<?php echo $id; ?>" href="#delete_book<?php echo $id; ?>" data-toggle="modal"    class="btn btn-danger"><i class="icon-trash icon-large"></i></a>
                                        <?php include('delete_book_modal.php'); ?>
										<a  rel="tooltip"  title="Sửa" id="e<?php echo $id; ?>" href="edit_book.php<?php echo '?id='.$id; ?>" class="btn btn-success"><i class="icon-pencil icon-large"></i></a>
										
                                    </td>
									
                                    </tr>
									<?php  }  ?>
                           
                                </tbody>
                            </table>
							
			
			</div>		
			</div>
		</div>
    </div>
<?php include('footer.php') ?>