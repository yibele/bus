<?php
require_once __DIR__.'/db.php';
/**
 * Created by PhpStorm.
 * User: yibeel
 * Date: 2017/5/5
 * Time: 下午10:19
 */
class user
{
    private $_db;

    public function __construct($db)
    {
        $this->_db = $db;
    }

    public function login($username,$password){
        if(empty($username)){
            throw new Exception("用户名不能为空");
        }
        $sql = "SELECT * FROM `Buscrew` WHERE name='".$username."' AND password='".$password."'";
        $res = $this->_db->Query($sql,'single',false);
        if(!$res){
            throw new Exception("用户名或者密码错误");
        }
        return $res;
    }
}














