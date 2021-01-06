<?php
if($_POST){
$res = $modx->getObject('modResource', $_POST['body']);
//return  $res->get('content');
$d = array('foo' => 'bar', 'baz' => 'long');
return $xpdo->toJSON($d);
}