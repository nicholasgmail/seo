
{set $resourceList = $id | resource: 'list-resource'}
{$_modx->runSnippet('!pdoResources', [
'parents' => $id,
'depth'=>'0',
'sortby' => '{"menuindex":"ASC"}',
'resources'=>  $resourceList,
'limit'=>'15',
'tpl' => '@FILE chunks/tpl_tariffs.tpl',
'toPlaceholder' => 'resultseo',
'includeTVs' => 'price,services-list-price,position-card',
'processTVs' => '1'
])}
