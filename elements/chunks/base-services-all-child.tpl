{$_modx->runSnippet('!pdoResources', [
'parents' => $id,
'depth'=>'0',
'sortby' => '{"menuindex":"ASC"}',
'tpl' => '@FILE chunks/tpl-services-all.tpl',
'toPlaceholder' => 'result-service-price-child',
'includeTVs' => 'old-price,price,price-img,size-card',
'processTVs' => '1'
])}
