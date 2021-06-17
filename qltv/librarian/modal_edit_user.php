	<div id="edit<?php echo $id; ?>" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-body">
			<div class="alert alert-info"><strong>Sửa admin</strong><br>(Mật khẩu cũ phải trùng nhau)</div>
	<form class="form-horizontal" method="post">
			<div class="control-group">
				<label class="control-label" for="inputEmail">Tên đăng nhập</label>
				<div class="controls">
				<input type="hidden" id="inputEmail" name="id" value="<?php echo $row['user_id']; ?>" required>
				<input type="text" id="inputEmail" name="username" value="<?php echo $row['username']; ?>" required>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="inputPassword">Mật khẩu mới</label>
				<div class="controls">
				<input type="text" name="password" id="inputPassword" value="" required>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="inputPassword">Mật khẩu cũ</label>
				<div class="controls">
				<input type="text" name="passwordlate" id="inputPassword" value="" required>
				</div>
			</div>
				<div class="control-group">
				<label class="control-label" for="inputEmail">Họ</label>
				<div class="controls">
	
				<input type="text" id="inputEmail" name="firstname" value="<?php echo $row['firstname']; ?>" required>
				</div>
			</div>
				<div class="control-group">
				<label class="control-label" for="inputEmail">Tên</label>
				<div class="controls">

				<input type="text" id="inputEmail" name="lastname" value="<?php echo $row['lastname']; ?>" required>
				</div>
			</div>
			<div class="control-group">
				<div class="controls">
				<button name="edit" type="submit" class="btn btn-success"><i class="icon-save icon-large"></i>&nbsp;Cập nhật</button>
				</div>
			</div>
    </form>
		</div>
		<div class="modal-footer">
			<button class="btn" data-dismiss="modal" aria-hidden="true"><i class="icon-remove icon-large"></i>&nbsp;Đóng</button>
		</div>
    </div>
	
	<?php
	if (isset($_POST['edit'])){
	
	$user_id=$_POST['id'];
	$username=addslashes($_POST['username']);
	$password=addslashes($_POST['password']);
	$passwordlate=addslashes($_POST['passwordlate']);
	$firstname=addslashes($_POST['firstname']);
	$lastname=addslashes($_POST['lastname']);
	
	mysqli_query($conn,"update users set username='$username', password='$password' , firstname = '$firstname' , lastname = '$lastname'  where user_id='$user_id' AND password='$passwordlate'")or die(mysqli_error());
		
	 ?>
	<script>

	window.location="users.php";
	</script>
	<?php
	}
	?>