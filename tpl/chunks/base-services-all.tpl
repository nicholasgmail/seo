{$_modx->runSnippet('!pdoResources', [
'parents' => '2',
'depth'=>'0',
'sortby' => '{"menuindex":"ASC"}',
'limit'=>'30',
'tpl' => '@FILE chunks/tpl-services-all.tpl',
'toPlaceholder' => 'result-service-price',
'includeTVs' => 'old-price,price,price-img,size-card',
'processTVs' => '1'
])}
