<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">
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
                <li><a href="#" onclick="Modal.repMes();return false;">报告路况</a></li>
				<li><a href="#">查看调度信息</a></li>
				<li><a href="#">查看历史调度信息</a></li>
				<li><a href="#" onclick="Modal.getAllMes();return false;">查看历史车况</a></li>
			</ul>
			<ul class='nav navbar-nav navbar-right'>
				<li><a href="">退出</a></li>
			</ul>
		</div>
    </nav>

    <div class="container">
        <div class="row">
            <div class="col-md-12" style="background:#d0e9c6;">
                <div class="col-md-3" style=" padding-top:25px;height: 300px; display:block">
                    <img src="../img/1.jpeg" alt="" style="position:relative;width:80%;left:10px;">
                </div>
                <div class="col-md-9">
                    <h3 style="padding-top:10px">员工信息:</h3>
                </div>
            </div>
        </div>
        <hr>
        <div class="row">
            <div class="col-md-12" style="height:300px;background:#ccc">
                <div class="col-md-3" style=" padding-top:25px;height: 300px; display:block">
                    <img src="../img/1.jpeg" alt="" style="position:relative;width:80%;left:10px;">
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
				</div>
            </div>
        </div>
    </div>

    <!-- 报告路况 -->
    <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" id="repMes" aria-labelledby="myLargeModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 style="text-align:center">报告路况信息</h1>
                </div>
                <div class="modal-body">
                    <label for="">请选择报告类型:</label>
                    <div class="btn-group">
                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <span id="rep">请选择.. </span><span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu">
                            <li><a href="#" onclick="Modal.change('1');return false;">报告路面事故</a></li>
                            <li><a href="#" onclick="Modal.change('2');return false;">报告路面拥堵</a></li>
                        </ul>
                    </div>
                    <hr>
                    <form action="">
                        <label for="" id="degree">拥堵程度:</label>
                        <label class="radio radio-inline" style="padding-left: 30px;margin-top:0">
                            <input type="radio" value="1" name="optionsRadios" id="option1">轻微拥堵:
                        </label>
                        <label class="radio radio-inline" style="padding-left: 20px;">
                            <input type="radio" value="2" name="optionsRadios" id="option2">中度拥堵:
                        </label>
                        <label class="radio radio-inline" style="padding-left: 20px;">
                            <input type="radio" value="3" name="optionsRadios" id="option3">严重拥堵:
                        </label>
                        <br>
                        <hr>
                        <label for="" id="reason" >拥堵原因:</label>
                        <input type="text" required class="form-control"/>
                        <hr>
                        <label for="">报告者:</label>
                        <input type="text" required class="form-control"/>
                        <hr>
                        <button class="btn btn-success" type="submit" onsubmit="Modal.succMes();">提交报告</button>
                        <button class="btn btn-default" type="reset">清空报告</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

	<!-- 查看调度信息 -->
	<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" id="getAllMes" aria-labelledby="myLargeModalLabel">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h1>历史车况信息</h1>
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
				<nav aria-label="Page navigation">
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
		var Modal = new Object();
		//ajax请求是否执行过一次的标记.如果tags != 0 那么success请求将不会在执行
		Modal.tag1 = 0;
		Modal.tag2 = 0;
		Modal.tag3 = 0;
		Modal.tag4 = 0;
		Modal.runtime = 0;

        Modal.succMes = function () {

        }

        Modal.change = function (value){
            var tag = 0;
            if(value == 1){
                $("#rep").html("报告路面拥堵");
                (function(){
                    $("#degree").html("拥堵程度:");
                    $("#reason").html("拥堵原因:")
                })();
            }else{
                $("#rep").html("报告路面事故");
                (function(){
                    $("#degree").html("事故类型:");
                    $("#reason").html("事故原因:")
                })();
            }
        }

        Modal.repMes = function(){

            $("#repMes").modal({ keyboard:true
            })
        }


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


		Modal.pagination = function () {
			if((Modal.totalPage%10) ==0){
				Modal.pageNum = Modal.totalPage/10;
			}else{
				Modal.pageNum = Math.floor(Modal.totalPage/10)+1;
			}
			for(var i = 1;i<=Modal.pageNum;i++){
				$("#pagination").append("<li><a href='' onclick='Modal.getAllMes("+i+");Modal.tag2 = 0 ;return false;'>"+i+"</a></li>");
			}
		}

		Modal.getAllMes = function(page=1){
			if(Modal.tag2 == 0) {
				$("#getAllMes #mes tr").remove();
				Modal.tag2 +=1;
				$.ajax({
					method: "GET",
					url: '../../restful/messages/1/' + page,
					dataType: 'json',
					success: function (data) {
						Modal.totalPage = data.totalPage;
						if(Modal.runtime ==0) {
							Modal.pagination();
							Modal.runtime =1;
						}
						$.each(data.data, function (index, item) {
							var dgt;  //故障程度
							var createdTime = item.createdTime ? item.createdTime.substr(0, 10) : item.createdTime;
							switch (item.degreeType) {
								case "1":
									dgt = "低";
									break;
								case "2":
									dgt = "中";
									break;
								case "3":
									dgt = "高";
									break;
								default:
									dgt = "低";
							}
							$("#getAllMes #mes").append("<tr id='busId'><td>" + item.unusualTypeId + "</td><td>" + createdTime + "</td><td>" + dgt + "</td><td>" + item.lineId + "</td><td>" + item.local + "</td><td>" + item.reason + "</td></tr>");
						})
					},
					error: function () {
						alert('error1');
					}
				});
			};
			$("#getAllMes").modal({
				keyboard:true
			});
		}
	</script>
</body>
</html>