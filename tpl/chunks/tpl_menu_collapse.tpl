{if '1' | resource: 'list-increase-sales'}
<div class="card-body py-0 px-3">
   <h6 class="text-uppercase text-indigo font-weight-bold pl-2">Увеличение продаж</h6>
   {$_modx->runSnippet("!pdoMenu", [
                "parents" => 2,
                "level" => 0,
                "resources" => "{'1' | resource: 'list-increase-sales'}",
                'tplOuter' => '@INLINE <nav class="nav flex-column">{$wrapper}</nav>',
                'tpl' => '@INLINE <a class="nav-link [[+classnames]]" href="{$link}">{$menutitle}</a>',             
                'hereClass' => 'active'
   ])}
</div>
{/if}
{if '1' | resource: 'list-increase-conversion'}
<div class="card-body py-0 px-3">
   <h6 class="text-uppercase text-indigo font-weight-bold pl-2">Увеличение конверсий</h6>
   {$_modx->runSnippet("!pdoMenu", [
                "parents" => 2,
                "level" => 0,
                "resources" => "{'1' | resource: 'list-increase-conversion'}",
                'tplOuter' => '@INLINE <nav class="nav flex-column">{$wrapper}</nav>',
                'tpl' => '@INLINE <a class="nav-link [[+classnames]]" href="{$link}">{$menutitle}</a>',             
                'hereClass' => 'active'
   ])}
</div>
{/if}
{if '1' | resource: 'list-development-and-design'}
<div class="card-body py-0 px-3">
   <h6 class="text-uppercase text-indigo font-weight-bold pl-2">Разработка и дизайн</h6>
   {$_modx->runSnippet("!pdoMenu", [
                "parents" => 2,
                "level" => 0,
                "resources" => "{'1' | resource: 'list-development-and-design'}",
                'tplOuter' => '@INLINE <nav class="nav flex-column">{$wrapper}</nav>',
                'tpl' => '@INLINE <a class="nav-link [[+classnames]]" href="{$link}">{$menutitle}</a>',             
                'hereClass' => 'active'
   ])}
</div>
{/if}