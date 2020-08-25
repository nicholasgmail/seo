{$_modx->runSnippet('!pdoResources', [
'parents' => '2',
'depth'=>'0',
'sortby' => '{"menuindex":"ASC"}',
'resources'=> "{'1' | resource: 'list-resource'}",
'limit'=>'15',
'tpl' => '@FILE chunks/tpl_tariffs.tpl',
'toPlaceholder' => 'resultseo',
'includeTVs' => 'services-price,service-list',
'processTVs' => '1'
])}
