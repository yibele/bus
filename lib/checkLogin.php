<?php
/**
 * Created by PhpStorm.
 * User: yibeel
 * Date: 2017/5/8
 * Time: 下午4:25
 */

session_cache_expire(240);
if($_GET["sid"]==null){
    session_destroy();
    header("Location:login.php");
}
session_id($_GET["sid"]);
session_start();
if($_SESSION['id'] == '' || $_SESSION["name"] == ""){
    session_destroy();
    header("Location:login.php");
    exit();
}

