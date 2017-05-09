<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" href="./front/css/app.css">
    <script src="./front/js/jquery.js"></script>
    <script src="./front/js/app.js"></script>
    <script src="./front/js/carInfo.js"></script> <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
    <style>
        .spacing-top{
            margin-top:10px;
        }

        body{
            background-image: url("./front/img/login-bg.png");
            padding-top:13%;padding-bottom:60px;
        }
        .login{
            position:relative;
            padding:30px;
            display:block;
            background-color:#f5f5f5;
            border:none;
            border-radius:1em;
            -moz-box-shadow:5px 3px 17px #333333; 
            -webkit-box-shadow:5px 3px 17px #333333; 
            box-shadow:5px 3px 17px #333333;;
        }
    </style>
</head>
<body>
    <div class="container"> <div class="col-md-4 col-md-offset-4 login">
                <form action="" method="post">
                    <h3 style="text-align:center">乘务员登陆</h3>
                    <hr>
                    <label for="username">用户名:</label>
                    <input type="text" required id="username" name="username" placeholder="username" class="form-control">
                    <label for="password" class="spacing-top">密码:</label>
                    <input type="text" required id="password" name="password" placeholder="password" class="form-control">
                    <input type="submit" value="登陆" class="btn btn-success spacing-top" onclick="login();">
                    <input type="reset" value="重置" class="btn btn-default spacing-top">
                </form>
            </div>
    </div>

    <script>
       function login(){
           var son = {
               "username": $("#username").val(),
               "password": $("#password").val(),
           };
           if(son.username ==''||son.password ==''){
               return true;
           }else{
           $.ajax({
               method: 'POST',
               url: './restful/users',
               dataType: "json",
               data:JSON.stringify(son),
               success: function (data) {
                   window.location.href="./main.php?sid="+data.sid;
               },
               error: function (data) {
                   alert(JSON.stringify(data));
               }
           });
           }
       }
    </script>

</body>
</html>
