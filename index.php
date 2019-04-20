<?php
/**
 * 应用入口文件
 */

header("Access-Control-Allow-Origin: * ");
header("Access-Control-Allow-Methods: POST, GET, OPTIONS, PUT, DELETE");
// 开启调试模式
define('APP_DEBUG',true);
// 设置缓存路径
define ('RUNTIME_PATH', './Runtime/');

// 定义应用目录
define('APP_PATH','./Application/');
// 引入ThinkPHP入口文件
require './HomyitCore/ThinkPHP.php';