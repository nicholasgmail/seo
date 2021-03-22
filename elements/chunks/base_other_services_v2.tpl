
{$_modx->runSnippet('!pdoResources', [
'parents' => '2',
'depth'=>'0',
'limit'=>'3',
'sortby'=> 'RAND()',
'tpl' => '@FILE chunks/tpl_other-services_v2.tpl',
'toPlaceholder' => 'other-services_v2',
'includeTVs' => 'old-price,price,price-img',
'processTVs' => '1'
])}

