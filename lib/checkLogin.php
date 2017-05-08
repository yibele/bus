<?php
/**
 * Created by PhpStorm.
 * User: yibeel
 * Date: 2017/5/8
 * Time: 下午4:25
 */

session_cache_expire(600);
if($_REQUEST["sid"]==null){
    session_destroy();
    header("Location:login.php");
}
session_id($_REQUEST["sid"]);
session_start();
if($_SESSION['busId'] == '' || $_SESSION["name"] == ""){
    session_destroy();
    header("Location:login.php");
}