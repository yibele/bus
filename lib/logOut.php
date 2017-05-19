<?php
/**
 * Created by PhpStorm.
 * User: yibeel
 * Date: 2017/5/9
 * Time: 上午10:06
 */

$sid = $_GET['sid'];
session_id($sid);
print_r($_SESSION);
session_destroy();
header("Location:../login.php");


