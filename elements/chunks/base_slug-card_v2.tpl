
{$_modx->runSnippet('!pdoResources', [
'parents' => $_modx->resource.id,
'depth'=>'0',
'showUnpublished' =>	'1',
'sortby' => '{"menuindex":"ASC"}',
'limit'=>'30',
'tpl' => '@FILE chunks/tpl-slug-card_v2.tpl',
'toPlaceholder' => 'slug-card'
'includeTVs' => 'list-info-price,image-page,services-list-price,button-form1,button-name1',
'processTVs' => '1'
])}
