<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title></title>
	<link rel="stylesheet" href="../css/app.css">
    <script src="../js/jquery.js"></script>
    <script src="../js/app.js"></script>
	<script src="../js/carInfo.js"></script>
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
</head>
<body>
	<nav class="navbar navbar-inverse navbar-static-top">
		<div class="container">
			<div class="navbar-header">
				<a href="#" class="navbar-brand">乘务员系统</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="" onclick="carInfo();return false;">车辆信息</a></li>
				<li><a href="#">查看调度信息</a></li>
				<li><a href="#">查看历史车况</a></li>
				<li><a href="#">查看历史调度信息</a></li>
			</ul>
			<ul class='nav navbar-nav navbar-right'>
				<li><a href="">退出</a></li>
			</ul>
		</div>
    </nav>
    <!-- Large modal -->
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-lg">Large modal</button>
    <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h1>modal-header</h1>
                </div>
				<div class="modal-body">
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Autem, explicabo illo illum ipsa laboriosam minus molestias! Debitis hic itaque laboriosam magni, modi provident quidem totam ut. Adipisci corporis iste nemo.</p>
				</div>
            </div>
        </div>
    </div>
</body>
</html>