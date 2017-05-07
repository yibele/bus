//ajax请求是否执行过一次的标记.如果tags != 0 那么success请求将不会在执行
function carInfo(){
    if(carInfo.tag ==0) {
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
                carInfo.tag += 1;
            },
            error: function () {
                alert('error');
            }
        });
    }
    $("#carInfo").modal({
        keyboard:true
    });
    carInfo.tag = 0;
};