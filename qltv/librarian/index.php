<?php include('header.php'); ?>
<?php include('navbar.php'); ?>

    <div class="container">
		<div class="margin-top">
			<div class="row">	
			<div class="span12">
					<div class="sti">
						<img src="../LMS/EUP.jpg" class="img-rounded">
					</div>
				<div class="login">
				<div class="log_txt">
				<p><strong>Vui lòng điền thông tin đăng nhập..</strong></p>
				</div>
						<form class="form-horizontal" method="POST">
								<div class="control-group">
									<label class="control-label" for="inputEmail">Tên đăng nhập</label>
									<div class="controls">
									<input type="text" name="username" id="username" placeholder="Tên đăng nhập" required>
									</div>
								</div>
								<div class="control-group">
									<label class="control-label" for="inputPassword">Mật khẩu</label>
									<div class="controls">
									<input type="password" name="password" id="password" placeholder="Mật khẩu" required>
								</div>
								</div>
								<div class="control-group">
									<div class="controls">
									<button id="login" name="submit" type="submit" class="btn"><i class="icon-signin icon-large"></i>&nbsp;Đăng nhập</button>
								</div>
								</div>
								
								<?php
								if (isset($_POST['submit'])){
								session_start();
								$username = $_POST['username'];
								$password = $_POST['password'];
								$query = "SELECT * FROM users WHERE username='$username' AND password='$password'";
								$result = mysqli_query($conn,$query)or die(mysqli_error());
								$num_row = mysqli_num_rows($result);
									$row=mysqli_fetch_array($result);
									if( $num_row > 0 ) {
										header('location:dashboard.php');
								$_SESSION['id']=$row['user_id'];
									}
									else{ ?>
								<div class="alert alert-danger">Đăng nhập thành công</div>		
								<?php
								}}
								?>
						</form>
				
				</div>
			</div>		
			</div>
		</div>
    </div>
<?php include('footer.php') ?>