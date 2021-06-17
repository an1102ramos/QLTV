<?php include('header.php'); ?>
<?php include('session.php'); ?>
<?php include('navbar_books.php'); ?>
    <div class="container">
		<div class="margin-top">
			<div class="row">	
			<div class="span12">	
		
             <div class="alert alert-info">Thêm sách</div>
			<p><a href="books.php" class="btn btn-info"><i class="icon-arrow-left icon-large"></i>&nbsp;Quay lại</a></p>
	<div class="addstudent">
	<div class="details">Vui lòng điền thông tin sách</div>		
	<form class="form-horizontal" method="POST" action="books_save.php" enctype="multipart/form-data">
			
	
			
		<div class="control-group">
			<label class="control-label" for="inputEmail">Tên sách:</label>
			<div class="controls">
			<input type="text" class="span4" id="inputEmail" name="book_title"  placeholder="Tên sách" required>
			</div>
		</div>
		
		
			<div class="control-group">
			<label class="control-label" for="inputPassword">Danh mục</label>
			<div class="controls">
			<select name="category_id">
			<option></option>
			<?php
			$cat_query = mysqli_query($conn,"select * from category");
			while($cat_row = mysqli_fetch_array($cat_query)){
			?>
			<option value="<?php echo $cat_row['category_id']; ?>"><?php echo $cat_row['classname']; ?></option>
			<?php  } ?>
			</select>
		</div>
		</div>
		
		<div class="control-group">
			<label class="control-label" for="inputEmail">Tác giả:</label>
			<div class="controls">
	<input type="text"  class="span4" id="inputPassword" name="author"  placeholder="Tác giả" required>
			</div>
		</div>
		

		
		

		<div class="control-group">
			<label class="control-label" for="iionputPassword">Bản sao:</label>
			<div class="controls">
			<input type="text" class="span1" id="inputPassword" name="book_copies"  placeholder="" required>
			</div>
		</div>
		
		<div class="control-group">
			<label class="control-label" for="inputPassword">Nơi xuất bản:</label>
			<div class="controls">
			<input type="text"  class="span4" id="inputPassword" name="book_pub"  placeholder="Nơi xuất bản" required>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="inputPassword">Nhà xuất bản:</label>
			<div class="controls">
			<input type="text"  class="span4" id="inputPassword" name="publisher_name"  placeholder="Nhà xuất bản" required>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="inputPassword">Mã sách:</label>
			<div class="controls">
			<input type="text"  class="span4" id="inputPassword" name="isbn"  placeholder="Mã sách" required>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="inputPassword">Năm xuất bản:</label>
			<div class="controls">
			<input type="text" id="inputPassword" name="copyright_year"  placeholder="Năm xuất bản" required>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="inputPassword">Trạng thái:</label>
			<div class="controls">
			<select name="status" required>
				<option></option>
				<option>Sách mới</option>
				<option>Sách cũ</option>				
				<option>Sách hỏng</option>
				<option>Thay thế</option>
				
			</select>
			</div>
		</div>
		
		
		<div class="control-group">
			<div class="controls">
			<button name="submit" type="submit" class="btn btn-success"><i class="icon-save icon-large"></i>&nbsp;Lưu</button>
			</div>
		</div>
    </form>					
			</div>		
			</div>		
			</div>
		</div>
    </div>
<?php include('footer.php') ?>