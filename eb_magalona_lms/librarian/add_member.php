<?php include('header.php'); ?>
<?php include('session.php'); ?>
<?php include('navbar_member.php'); ?>
    <div class="container">
		<div class="margin-top">
			<div class="row">	
			<div class="span12">	
		
             <div class="alert alert-info">Thêm thành viên</div>
			<p><a href="member.php" class="btn btn-info"><i class="icon-arrow-left icon-large"></i>&nbsp;Trở lại</a></p>
	<div class="addstudent">
	<div class="details">Vui lòng điền thông tin thành viên</div>		
	<form class="form-horizontal" method="POST" action="member_save.php" enctype="multipart/form-data">
			
		<div class="control-group">
			<label class="control-label" for="inputEmail">Tên:</label>
			<div class="controls">
			<input type="text" id="inputEmail" name="firstname"  placeholder="Tên" required>

			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="inputPassword">Họ:</label>
			<div class="controls">
			<input type="text" id="inputPassword" name="lastname"  placeholder="Họ" required>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="inputPassword">Giới tính:</label>
			<div class="controls">
			<select name="gender" required>
				<option></option>
				<option>Nam</option>
				<option>Nữ</option>
			</select>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="inputPassword">Địa chỉ:</label>
			<div class="controls">
			<input type="text" id="inputPassword" name="address"  placeholder="Địa chỉ" required>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="inputPassword">SĐT:</label>
			<div class="controls">
			<input type='tel' pattern="[0-9]{11,11}" class="search" name="contact"  placeholder="Số điện thoại"  autocomplete="off"  maxlength="11" >
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="inputPassword">Loại thành viên:</label>
			<div class="controls">
			<select name="type" required>
			
			
			
									<option></option>
									<option>Sinh viên</option>
									<option>Giảng viên</option>
									<option></option>
									
				</select>
			</div>
		</div>
			
		<div class="control-group">
			<label class="control-label" for="inputPassword">Năm học:</label>
			<div class="controls">
				<select name="year_level" >
					

									<option> </option>
									<option>Năm 1</option>
									<option>Năm 2</option>
									<option>Năm 3</option>
									<option>Năm 4</option>
									<option>Giảng dạy</option>
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