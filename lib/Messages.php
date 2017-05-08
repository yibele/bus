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
    private $repCode =[
        '1'=>'accidentInformation',    //车辆路面拥堵信息表
        '2'=>'blockInformation',       //车辆路面故障信息表
    ];
    //数据库句柄
    private $_db;
    public function __construct($db)
    {
        $this->_db = $db;
    }

    /**
     * 获取调度信息
     * @param $busId
     */
    public function getMessage($busId,$page=null){
        if($page === null){
            $sql = "SELECT count(*) as totalPage FROM `busunusualbus` WHERE `busId`=$busId";
            return $this->_db->Query($sql,'single',false);
        }else {
            $sql = "SELECT * FROM `busunusualbus` WHERE `busId`=$busId";
            return $this->_db->GetList($sql, $page, 10, false);
        }
    }

    /**
     * 报告路况信息
     * @param $busId
     * @param $args
     */
    public function putMessage($busId, $args){

    }

    /**
     * 报告路面故障
     * @param $mes   故障信息
     * @param $type  故障类型
     * @param $crewId 报告人Id
     */

    public function reportMessage(array $mes, $type){
        if(empty($mes)){
            throw new Exception("故障信息不能为空!");
        }
        if(empty($type) || !in_array($type,[1,2])){
            throw new Exception("报告类型错误,请检查");
        }
        if(empty($crewId)){
            throw new Exception("报告人Id不能为空!");
        }

        if($type == 1){
            $this->_busAccident($mes);
        }else {
            $this->_busBlock();
        }
    }

    private function _busAccident($args){
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

        //将$mes数组转化成变量
        $createdTime = Date('Y-m-d H:i:s');
        $args['createdTime'] = $createdTime;
        $this->_db->Insert(`busaccidentinformation`,$args);
    }


    /**
     *列出所有的调度信息
     * @param $busId
     * @param int $page
     * @param int $size
     * @return mixed
     * @throws Exception
     */
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