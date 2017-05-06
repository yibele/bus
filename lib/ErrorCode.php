<?php

/**
 * Created by PhpStorm.
 * User: yibeel
 * Date: 2017/5/6
 * Time: 上午11:36
 */
class ErrorCode
{

    //请求方法不允许
    const REQUEST_METHOD_NOT_ALLOWED = 405;
    //请求资源不允许
    const RESOURCE_CANT_REACH = 2;
    //请求参数错我
    const REQUEST_QUERY_ERROR = 3;
    //用户名不能为空
    const USERNAME_REQUIRED = 4;
    //密码不能为空
    const PASSWORD_REQUIRED = 5;


}