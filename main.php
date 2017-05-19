<?php
require_once "./lib/checkLogin.php";
?>
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">
<head>
	<meta charset="UTF-8">
	<title></title>
	<link rel="stylesheet" href="./front/css/app.css">
    <script src="./front/js/jquery.js"></script>
    <script src="./front/js/app.js"></script>
	<script src="./front/js/carInfo.js"></script>
</head>
<body>
	<nav class="navbar navbar-inverse navbar-static-top">
		<div class="container">
			<div class="navbar-header">
				<a href="#" class="navbar-brand">乘务员系统</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="" onclick="Modal.carInfo();return false;">车辆信息</a></li>
                <li><a href="#" onclick="Modal.repMes();return false;">报告路况</a></li>
				<li><a href="#" onclick="Modal.dispMes();return false;">查看调度信息</a></li>
				<li><a href="#">查看历史调度信息</a></li>
				<li><a href="#" onclick="Modal.getAllMes();return false;">查看历史车况</a></li>
			</ul>
			<ul class='nav navbar-nav navbar-right'>
				<li><a href="<?php echo "./lib/logOut.php?sid=".$_SESSION['sid']?>">退出</a></li>
			</ul>
		</div>
    </nav>

    <div class="container">
        <div class="row">
            <div class="col-md-12" style="background:#d0e9c6;">
                <div class="col-md-3" style=" padding-top:25px;height: 300px; display:block">
                    <img src="./front/img/1.jpeg" alt="" style="position:relative;width:80%;left:10px;">
                </div> <div class="col-md-9"> <h3 style="padding-top:10px">员工信息:</h3>
                </div>
            </div>
        </div>
        <hr>
        <div class="row">
            <div class="col-md-12" style="height:300px;background:#ccc">
                <div class="col-md-3" style=" padding-top:25px;height: 300px; display:block">
                    <img src="./front/img/1.jpeg" alt="" style="position:relative;width:80%;left:10px;">
                </div>
                <div class="col-md-9">
                    <h3 style="padding-top:10px">车辆信息:</h3>
                </div>
            </div>
        </div>
    </div>
    <!-- 查看车辆信息 -->
    <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" id="carInfo" aria-labelledby="myLargeModalLabel">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h1>modal-header</h1>
                </div>
				<div class="modal-body">
				</div> </div>
        </div>
    </div>

    <!-- 查看调度信息 -->
    <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" id="dispMes" aria-labelledby="myLargeModalLabel">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 style="text-align:center">查看调度信息</h1>
                </div>
				<div class="modal-body">

				</div>
            </div>
        </div>
    </div>

    <!-- 报告路况 -->
    <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" id="repMes" aria-labelledby="myLargeModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 style="text-align:center">报告路况信息</h1> </div>
                <div class="modal-body">
                    <label for="">请选择报告类型:</label>
                    <div class="btn-group">
                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <span id="rep">请选择.. </span><span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu">
                            <li><a href="#" onclick="Modal.change('2');return false;">报告路面事故</a></li>
                            <li><a href="#" onclick="Modal.change('1');return false;">报告路面拥堵</a></li> </ul>
                    </div>
                    <hr>
                    <form action="">
                        <label for="" id="degree">拥堵程度:</label>
                        <!--
                        <label class="radio radio-inline" style="padding-left: 30px;margin-top:0">
                            <input type="radio" value="1" name="optionsRadios" id="option1">轻微拥堵:
                        </label>
                        <label class="radio radio-inline" style="padding-left: 20px;">
                            <input type="radio" value="2" name="optionsRadios" id="option2">中度拥堵:
                        </label>
                        <label class="radio radio-inline" style="padding-left: 20px;">
                            <input type="radio" value="3" name="optionsRadios" id="option3">严重拥堵:
                        </label>
                        -->
                        <input type="text" required class="form-control" id="accidentDegree" placeholder="1:轻度 2:中度 3:重度" />
                        <br>
                        <hr>
                        <label for="">地点:</label>
                        <input type="text" id="location" required class="form-control"/>
                        <hr>
                        <label for="">线路:</label>
                        <input type="text" id="lineId" required class="form-control"/>
                        <hr>
                        <label for="" >描述:</label>
                        <input type="text" id="accidentContent" required class="form-control"/>
                        <hr>
                        <label for="">报告者:</label>
                        <input type="text" id="report" required class="form-control"/>
                        <hr>
                        <button class="btn btn-success" id="submit">提交报告</button>
                        <button class="btn btn-default" type="reset">清空报告</button>

                        <script>
                            var repMes = {
                                "location" : $("#location").val(),
                                "lineId" : $("#lineId").val(),
                                "Content" : $("#accidentContent").val()
                            }

                        </script>

                    </form>
                </div>
            </div>
        </div>
    </div>

	<!-- 历史车况信息 -->
	<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" id="getAllMes" aria-labelledby="myLargeModalLabel">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h1 style="text-align:center">历史车况信息</h1>
				</div>
				<div class="modal-body">
					<table class="table table-striped">
						<thead>
							<tr>
								<th>故障类型</th>
								<th>时间</th>
								<th>严重程度</th>
								<th>线路</th>
								<th>地点</th>
								<th>原因</th>
							</tr>
						</thead>
						<tbody id="mes">
						</tbody>
					</table>
				</div>
				<nav aria-label="Page navigation" style="padding-left:25%;">
					<ul class="pagination" id="pagination">
						<li>
							<a href="#" aria-label="Previous">
								<span aria-hidden="true">&laquo;</span>
							</a>
						</li>
					</ul>
				</nav>
			</div>
		</div>
	</div>

	<script>
        var busId = <?php echo $_SESSION['id']?>;

	</script>
    <script src="./front/js/modal.js"></script>
</body>
</html>
