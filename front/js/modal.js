/**
 * Created by yibeel on 2017/5/18.
 */
var Modal = new Object(); //ajax请求是否执行过一次的标记.如果tags != 0 那么success请求将不会在执行
Modal.tag1 = 0; Modal.tag2 = 0;
Modal.tag3 = 0;
Modal.tag4 = 0;
Modal.runtime = 0;
var tag = 0;

/**
 * 修改报告路况时候的报告项目,
 *
 * /
 */
Modal.change = function (value) {
    if (value == 1) {
        $("#rep").html("报告路面拥堵");
        (function () {
            $("#degree").html("拥堵程度:");
            $("#reason").html("拥堵原因:")
            tag = 1;

        })();
        /**
         $("#submit").on('click',function(){
                var son = {
                    "time" : new Date(),
                    "degree" : $("#accidentDegree").val(),
                    "roadName" : $("#location").val(),
                    "busId" : busId,
                    "lineId" : $("#lineId").val(),
                    "blockContent" : $("#accidentContent").val(),
                    "blockLocation" : $("#location").val(),
                    "report" : $("#report").val(),
                    "isRelieve" : 0,
                    "type" : 1
                };
                alert(JSON.stringify(son));

                $.ajax({
                    method: "POST",
                    data: JSON.stringify(son),
                    url : "./restfull/messages/",
                    success : function(data) {
                        alert(JSON.stringify(data));
                    },
                    error : function (data){
                        alert(JSON.stringify(data));
                    }
                });
                return false;
            });
         **/
    } else if (value == 2) {
        tag = 2;
        $("#rep").html("报告路面事故");
        (function () {
            $("#degree").html("事故类型:");
            $("#reason").html("事故原因:")
        })();
        /**
         $("#submit").on('click',function () {
                    var son = {
                        "time" : new Date(),
                        "busId": busId,
                        "accidentDegree": $("#accidentDegree").val(),
                        "accidentLocation" : $("#location").val(),
                        "lineId" : $("#lineId").val(),
                        "accidentContent": $("#accidentContent").val(),
                        "report" : $("#report").val(),
                        "type" : 2
                    };
                    $.ajax({
                        method: "POST",
                        data: JSON.stringify(son),
                        url : "./restful/messages/",
                        success : function (data) {
                            alert(JSON.stringify(data));
                        },
                        error: function () {
                            alert("报告错误,请重新提交");
                        }
                    });
                    return false;
                });
         **/
    }
}

/**
 * 提交数据
 * 首先判断tag的值,如果是1 那么就说明是报告事故信息,如果是2 , 那就说明报告拥堵信息
 *
 */
$("#submit").on('click',function(){
    if(tag == 1) {
        Modal.son = {
            "time": new Date(),
            "degree": $("#accidentDegree").val(),
            "roadName": $("#location").val(),
            "busId": busId,
            "lineId": $("#lineId").val(),
            "blockContent": $("#accidentContent").val(),
            "blockLocation": $("#location").val(),
            "report": $("#report").val(),
            "isRelieve": 0,
            "type": 2
        };
    }else if(tag==2){
        Modal.son = {
            "time": new Date(),
            "busId": busId,
            "accidentDegree": $("#accidentDegree").val(),
            "accidentLocation": $("#location").val(),
            "lineId": $("#lineId").val(),
            "accidentContent": $("#accidentContent").val(),
            "report": $("#report").val(),
            "type": 1
        };
    }else{
        alert("请选择报告类型");
    }

    $.ajax({
        method: "POST",
        data: JSON.stringify(Modal.son),
        url: "./restfull/messages/",
        success: function (data) {
            alert(JSON.stringify(data));
        },
        error: function (data) {
            alert(JSON.stringify(data));
        }
    });
    return false;
});

Modal.repMes = function(){
    /**
     * $mes = [
     *      "busId" = ' ',         车辆id
     *      "accidentDegree" = '', 事故类型
     *      "accidentLocation" = '', 事故地点
     *      "lineId" = '',         班车线路
     *      "accidentContent" = '',  事故描述
     *      "time" =            故障时间
     *      "report" = "",      报告人
     * ]
     */
    var son = {
        "busId":busId,
        "accidentDegree":$("#degree").val(),
        "accidentLocation":$("#location").val(),
        "lineId": $("#lineId").val(),
        "accidentContent" : $("#accidentContent").val(),
        "time" : "",
        "report" : $("#report").val(),
    }

    $.ajax({
        method: "POST",

    })
    $("#repMes").modal({
        keyboard:true
    })
}


/**
 Modal.carInfo = function(){
			if(Modal.tag1 ==0) {
				$.ajax({
					method: 'POST',
					url: './restful/users',
					dataType: "json",
					data: JSON.stringify({
                        "username": <?php echo $_SESSION['name']?>,
                        "password": <?php echo '00'.$_SESSION['id']?>
					}),
					success: function (data) {
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
 */

Modal.pagination = function () {
    if((Modal.totalPage%10) ==0){
        Modal.pageNum = Modal.totalPage/10;
    }else{
        Modal.pageNum = Math.floor(Modal.totalPage/10)+1;
    }
    if(Modal.pageNum>10){
        Modal.pageNum = 10;
    }

    for(var i = 1;i<=Modal.pageNum;i++){
        $("#pagination").append("<li><a href='' onclick='Modal.getAllMes("+i+");Modal.tag2 = 0 ;return false;'>"+i+"</a></li>");
    }
}

Modal.getAllMes = function(page = 1){
    if(Modal.tag2 == 0) {
        $("#getAllMes #mes tr").remove();
        Modal.tag2 +=1;
        $.ajax({
            method: "GET",
            url: './restful/messages/'+busId+'/' + page,
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
                    var Typeid = item.unusualTypeId;
                    switch(Typeid){
                        case '1': Typeid = '车门异常';
                            break;
                        case '2': Typeid = '胎压异常';
                            break;
                        case '3': Typeid = '燃油量异常';
                            break;
                        case '4': Typeid = '发动机异常';
                            break;
                        case '5': Typeid = '车问异常';
                            break;
                        case '6': Typeid = '车速异常';
                            break;
                        case '7': Typeid = '私自绕行';
                            break;
                        case '8': Typeid = '私自甩站';
                            break;
                        case '9': Typeid = '虚开班次';
                            break;
                        case '10': Typeid = '首末班车发车异常';
                            break;
                        case '11': Typeid = '校区附近车辆异常';
                            break;
                        case '12': Typeid = '车站客流量异常';
                            break;
                        default: Typeid = '正常异常';
                    }
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
                    $("#getAllMes #mes").append("<tr id='busId'><td>" + Typeid + "</td><td>" + createdTime + "</td><td>" + dgt + "</td><td>" + item.lineId + "</td><td>" + item.local + "</td><td>" + item.reason + "</td></tr>");
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

Modal.dispMes = function(){
    $("#dispMes").modal({
        keyboard:true
    });
}

$(function(){
    setInterval(function(){
        $.ajax({
            type:"GET",
            url:"./restful/dispMes/"+busId,
            dataType:"json",
            success:function(data){
                console.log(data.count);
            },
            error:function(data){

            }
        })

    },3000);
})


























