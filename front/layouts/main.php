<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title></title>
	<link rel="stylesheet" href="../css/app.css">
	<script src="../js/jquery.js"></script>
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

		<div class="modal"></div>
	</nav>
</body>
</html>