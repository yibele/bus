<?php

/**
 * 数据库连接类
 * Created by PhpStorm.
 * User: yibeel
 * Date: 2017/5/5
 * Time: 下午9:45 */
class db
{
    private $_dsn;
    private $_username;
    private $_password;
    private static $_db;

    public function __construct($dsn,$username,$password)
    {
        $this->_dsn = $dsn;
        $this->_username = $username;
        $this->_password = $password;
        if(isset(self::$_db)){
            return self::$_db;
        }else{
            try {
                self::$_db = new PDO($this->_dsn, $this->_username, $this->_password);
                return self::$_db;
            }catch (PDOException $e){
                echo 'Connection failed:' . $e->getMessage();
            }
        }
    }

    /*
     * 数据库连接方法
     */
    public function connect(){
        if(isset(self::$_db)){
            self::$_db->query('SET names utf8');
            return self::$_db;
        }else{
            try {
                self::$_db = new PDO($this->_dsn, $this->_username, $this->_password);
                return self::$_db;
            }catch (PDOException $e){
                echo 'Connection failed:' . $e->getMessage();
            }
        }
    }
    /**
     * 执行query操作, 如果
     */
    public function Query($sql, $type='many', $debug=false){
        if($debug === true){
            exit($sql);
        }
        try {
            //设置mysql编码为utf8, 不然读取出来的中文会出现乱码
            self::$_db->query('SET NAMES utf8');
            $raw = self::$_db->query($sql);
            if ($type == 'single') {
                $res = $raw->fetch(PDO::FETCH_ASSOC);
            } elseif ($type == 'many') {
                $res = $raw->fetchAll(PDO::FETCH_ASSOC);
            }
        }catch (PDOException $e) {
            exit($e->getMessage());
        }
        return $res;
    }

    //获取分页信息
    public function GetList($sql, $page=1, $offset = 10){
        if($offset >100){
            throw new Exception("每个页面最多只能显示100行");
        }
        $page = ($page-1) * $offset;
        $page = $page < 0 ? 0 : $page;
        $sql .= " LIMIT ".$page.",".$offset;
        return $this->Query($sql,'many',false);
    }
}





















