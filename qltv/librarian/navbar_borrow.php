      
      <div class="navbar navbar-fixed-top navbar-inverse">
            <div class="navbar-inner">
                <div class="container">
                    <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </a>
                    <div class="nav-collapse collapse">
                        
					<ul class="nav">
					<li><a href="dashboard.php"><i class="icon-home icon-large"></i>&nbsp;Trang chủ</a></li>
					<li><a href="users.php"><i class="icon-user icon-large"></i>&nbsp;ADMIN</a></li>
					<?php 
					include('dropdown.php');
					?>
					<li><a href="books.php"><i class="icon-book icon-large"></i>&nbsp;Sách</a></li>
					<li><a href="member.php"><i class="icon-group icon-large"></i>&nbsp;Thành viên</a></li>
					<li><a href="archive.php"><i class="icon-list-alt icon-large"></i>&nbsp;Kho</a></li>
					<li><a href="#myModal" data-toggle="modal"><i class="icon-search icon-large"></i>&nbsp;Tìm kiếm nâng cao</a></li>
					
				
					<li><a href="logout.php" data-toggle="modal"><i class="icon-signout icon-large"></i>&nbsp;Đăng xuất</a></li>
					</ul>
					 <div class="pull-right">
					 	
						<div class="admin">Welcome: EPU</div>
                     </div>
                    </div>
                </div>
            </div>
        </div>
		 <?php include('search_form.php'); ?>

 
