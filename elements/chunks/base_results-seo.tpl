
{$_modx->runSnippet('!pdoResources', [
'parents' => $_modx->resource.parent,
'depth'=>'0',
'resources' => $_modx->resource.id,
'sortby' => '{"menuindex":"ASC"}',
'limit'=>'15',
'tpl' => '@FILE chunks/tpl_results-seo.tpl',
'toPlaceholder' => 'seoresultsimg',
'includeTVs' => 'seo-results-img, title-sliders',
'processTVs' => '1'
])}
