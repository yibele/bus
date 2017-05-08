<?php
require_once __DIR__.'/config.php';
require_once __DIR__.'/lib/db.php';
require_once __DIR__.'/lib/user.php';
require_once __DIR__.'/lib/Messages.php';

$db = new db($dsn,$username,$password);


$user = new user($db);
$mes = new Messages($db);






