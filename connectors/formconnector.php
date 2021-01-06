<?php
// Загрузить MODX
require_once dirname(dirname(__FILE__)) . '/config.core.php';
require_once MODX_CORE_PATH . 'model/modx/modx.class.php';
$modx = new modX();
$modx->initialize('web');
$modx->getService('error', 'error.modError', '', '');

if ($_REQUEST['id'])  {
    $_REQUEST= str_replace('>','',$_REQUEST);
    $_REQUEST = str_replace('<','',$_REQUEST);
    $formid = json_decode($_REQUEST['id']);
    $result = $modx->runSnippet('pdoResources', array(
        'parents' => 0,
        'resources' => $formid,
        'select' => array(modResource => 'content'),
        'return' => 'json'
    ));
    header("Content-Type: application/json; charset=UTF-8");
    echo json_encode(array('content'=>$result, success => true));
    @session_write_close();
    die();
}else{
    header("Content-Type: application/json; charset=UTF-8");
    header($_SERVER['SERVER_PROTOCOL'] . ' 401 Not Authorized');
    echo json_encode(array(
        'success' => false,
        'code' => 404,
    ));
    @session_write_close();
    die();
}