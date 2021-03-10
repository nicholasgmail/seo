{$_modx->runSnippet('!pdoResources', [
'parents' => $_modx->resource.id,
'depth'=>'0',
'resources'=>'2',
'limit'=>'12',
'tpl' => '@FILE chunks/tpl_promotion_v2.tpl',
'toPlaceholder' => 'result-seo-promotion_v2',
'includeTVs' => 'seo-promotion',
'processTVs' => '1'
])}
