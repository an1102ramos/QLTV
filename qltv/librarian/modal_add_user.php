	<div id="add_user" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-body">
			<div class="alert alert-info"><strong>Thêm admin</strong>
				
			</div>
	<form class="form-horizontal" method="post">
			<div class="control-group">
				<label class="control-label" for="inputEmail">Tên đăng nhập</label>
				<div class="controls">
				<input type="text" id="inputEmail" name="username" placeholder="Tên đăng nhập" required>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="inputPassword">Mật khẩu</label>
				<div class="controls">
				<input type="password" name="password" id="inputPassword" placeholder="Mật khẩu" required>
				</div>
			</div>
				<div class="control-group">
				<label class="control-label" for="inputEmail">Tên</label>
				<div class="controls">
				<input type="text" id="inputEmail" name="firstname" placeholder="Tên" required>
				</div>
			</div>
				<div class="control-group">
				<label class="control-label" for="inputEmail">Họ</label>
				<div class="controls">
				<input type="text" id="inputEmail" name="lastname" placeholder="Họ" required>
				</div>
			</div>
			<div class="control-group">
				<div class="controls">
				<button name="submit" type="submit" class="btn btn-success"><i class="icon-save icon-large"></i>&nbsp;Lưu</button>
				</div>
			</div>
    </form>
		</div>
		<div class="modal-footer">
			<button class="btn" data-dismiss="modal" aria-hidden="true"><i class="icon-remove icon-large"></i>&nbsp;Đóng</button>
		</div>
    </div>
	
	<?php
	if (isset($_POST['submit'])){
	$username=addslashes($_POST['username']);
	$password=addslashes($_POST['password']);
	$firstname=addslashes($_POST['firstname']);
	$lastname=addslashes($_POST['lastname']);
	
	mysqli_query($conn,"insert into users (username,password,firstname,lastname) values('$username','$password','$firstname','$lastname')")or die(mysqli_error());
	}
	?>