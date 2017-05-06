<?php
require_once __DIR__.'/../config.php';
require_once __DIR__.'/../lib/ErrorCode.php';
require_once __DIR__.'/../lib/user.php';
require_once __DIR__.'/../lib/Messages.php';
require_once __DIR__.'/../lib/db.php';
/** * Created by PhpStorm.
 * User: yibeel
 * Date: 2017/5/6
 * Time: 上午10:51
 */

class restful
{
    private $_user;

    private $_message;

    private $_requestMethod;

    private $_resourceName;

    private $_id;

    /*
     * 常用到的状态码
     */
    private $_statusCode = [
        200 => 'OK',
        204 => 'No content',
        400 => 'Bad Request',
        401 => 'Unauthorized',
        404 => 'Not Found',
        403 => 'Forbidden',
        405 => 'Request Not Allow',
        500 => 'Server Internel Error'
    ];

    /*
     * 允许请求的资源列表
     */
    private $_allowResources = ['users','messages'];

    /*
     * 允许请求的方法
     */
    private $_allowRequestMethods = ['GET','PUT','POST','DELETE','OPTIONS'];

    public function __construct(user $user,Messages $message)
    {
        $this->_user = $user;
        $this->_message = $message;
    }

    /**
     * 运行程序!
     */
    public function run(){
        try{
            $this->_setupRequestMethod();
            $this->_setResrouces();
            if($this->_resourceName == 'users'){
               $this->_json(['data'=>$this->_handleUser()],200);
            }elseif($this->_resourceName == 'messages'){
                $this->_handleMessage();
            }
        }catch (Exception $e){
            $this->_json(['error'=>$e->getMessage()],$e->getCode());
        }
    }

    /*
     * 初始化请求方法
     */
    private function _setupRequestMethod(){
        $this->_requestMethod = $_SERVER['REQUEST_METHOD'];
        if(!in_array($this->_requestMethod, $this->_allowRequestMethods)){
            throw new Exception("请求方法不被允许", 405);
        }
    }

    /*
     * 初始化请求资源
     */
    private function _setResrouces(){
        $res = $_SERVER['REQUEST_URI'];
        $res= explode('/',$res);
        $this->_resourceName = $res[2];
        if(!in_array($this->_resourceName,$this->_allowResources)){
            throw new ErrorException("请求资源不允许",405);
        }

        if(!empty($res[3])){
            $this->_id = $res[3];
        }
    }

    /*
     * 当资源为用户的时候调用
     */
    private function _handleUser(){
        if($this->_requestMethod!='POST'){
            throw new Exception("请求方法不被允许", 405);
        }

        $body = $this->_getBodyParams();

        if(empty($body['username'])){
            throw new Exception("用户名不能为空",404);
        }
        if(empty($body['password'])){
            throw new Exception("密码不能为空",404);
        }

        return $this->_user->login($body['username'],$body['password']);
    }

    private function _getBodyParams(){
        $raw = file_get_contents("php://input");
        if(empty($raw)){
            throw new Exception("请求参数错误",404);
        }
        return json_decode($raw,true);
    }

    private function _json($array,$code=0){
        if($code !=200 && $code !=204 && $code>0){
            header("HTTP/1.1 ".$code." ".$this->_statusCode[$code]);
        }
        header("Content-Type:application/json;charset=utf-8");
        echo json_encode($array,JSON_UNESCAPED_UNICODE);
        exit();
    }

}

$db = new db($dsn,$username,$password);
$user = new user($db);
$message = new Messages($db);
$restful = new restful($user,$message);

$restful->run();






















