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
				<li class="active"><a href="" onclick="Modal.carInfo();return false;">车辆信息</a></li>
				<li><a href="#">查看调度信息</a></li>
				<li><a href="#">查看历史车况</a></li>
				<li><a href="#">查看历史调度信息</a></li>
			</ul>
			<ul class='nav navbar-nav navbar-right'>
				<li><a href="">退出</a></li>
			</ul>
		</div>
    </nav>

    <!-- 查看车辆信息 -->
    <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" id="carInfo" aria-labelledby="myLargeModalLabel">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h1>modal-header</h1>
                </div>
				<div class="modal-body">
				</div>
            </div>
        </div>
    </div>

	<!-- 查看调度信息 -->
	<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" id="getAllMes" aria-labelledby="myLargeModalLabel">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h1>modal-header</h1>
				</div>
				<div class="modal-body">
				</div>
			</div>
		</div>
	</div>

	<script>
		var Modal = new Object();
		//ajax请求是否执行过一次的标记.如果tags != 0 那么success请求将不会在执行
		Modal.tag1 = 0;
		Modal.tag2 = 0;
		Modal.tag3 = 0;
		Modal.tag4 = 0;

		Modal.carInfo = function(){
			if(Modal.tag1 ==0) {
				$.ajax({
					method: 'POST',
					url: '../../restful/users',
					dataType: "json",
					data: JSON.stringify({
						"username": "韩世荣",
						"password": "001"
					}),
					success: function (data) {
						alert(JSON.stringify(data));
						$("#carInfo .modal-body").append("<p>" + JSON.stringify(data) + "</p>");
						Modal.tag1 += 1;
					},
					error: function () {
						alert('error');
					}
				});
			}
			$("#carInfo").modal({
				keyboard:true
			});
		};


	</script>
</body>
</html>