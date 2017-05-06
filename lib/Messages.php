<?php
require_once __DIR__.'/db.php';

/**
 * Created by PhpStorm.
 * User: yibeel
 * Date: 2017/5/6
 * Time: 上午10:57
 */
class Messages
{
    private $_db;

    public function __construct($db)
    {
        $this->_db = $db;
    }

    public function getMessage($busId){

    }

    public function reportMessage($mes, $crewId){

    }

    public function listMessage($busId ,$page =1, $size=1){
        if($size>100){
            throw new Exception("分页大小最大值为100");
        }

        $limit = ($page-1)* $size;
        $limit = $limit < 0 ? 0 : $limit;
        if(empty($busId)){
            throw new Exception("班车编号不能为空");
        }
        $sql = 'select name,degreeType,busId,reason,unusualTime,local from busunusualbus as b INNER JOIN buscrew
as c WHERE b.busId="'.$busId.'" AND b.crewId = c.id';
        $res = $this->_db->GetList($sql,$page,$size);
        return $res;
    }
}