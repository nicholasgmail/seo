{if '1' | resource: 'list-increase-sales'}
<li class="nav-mobile__item py-3">
   <a class="nav-mobile__link text-decoration-none h5 nav-mobile__link--plus text-indigo" data-behaviour="toggle-link-icon"  href="#">Увеличение продаж</a>
   {$_modx->runSnippet("!pdoMenu", [
                "parents" => 2,
                "level" => 0,
                "resources" => "{'1' | resource: 'list-increase-sales'}",
                'tplOuter' => '@INLINE  <nav class="nav-mobile__sub-list" data-behaviour="toggle-sub-menu">{$wrapper}</nav>',
                'tpl' => '@INLINE <li class="nav-mobile__sub-item"><a class="nav-mobile__link [[+classnames]]" href="{$link}">{$menutitle}</a></li>',             
                'hereClass' => 'active'
   ])}
</li>
{/if}
{if '1' | resource: 'list-increase-conversion'}
<li class="nav-mobile__item py-3">
   <a class="nav-mobile__link text-decoration-none h5 nav-mobile__link--plus text-indigo" data-behaviour="toggle-link-icon"  href="#">Увеличение конверсий</a>
   {$_modx->runSnippet("!pdoMenu", [
                "parents" => 2,
                "level" => 0,
                "resources" => "{'1' | resource: 'list-increase-conversion'}",
                'tplOuter' => '@INLINE  <nav class="nav-mobile__sub-list" data-behaviour="toggle-sub-menu">{$wrapper}</nav>',
                'tpl' => '@INLINE <li class="nav-mobile__sub-item"><a class="nav-mobile__link [[+classnames]]" href="{$link}">{$menutitle}</a></li>',             
                'hereClass' => 'active'
   ])}
</li>
{/if}
{if '1' | resource: 'list-development-and-design'}
<li class="nav-mobile__item py-3">
   <a class="nav-mobile__link text-decoration-none h5 nav-mobile__link--plus text-indigo " data-behaviour="toggle-link-icon"  href="#">Разработка и дизайн</a>
   {$_modx->runSnippet("!pdoMenu", [
                "parents" => 2,
                "level" => 0,
                "resources" => "{'1' | resource: 'list-development-and-design'}",
                'tplOuter' => '@INLINE  <nav class="nav-mobile__sub-list" data-behaviour="toggle-sub-menu">{$wrapper}</nav>',
                'tpl' => '@INLINE <li class="nav-mobile__sub-item"><a class="nav-mobile__link [[+classnames]]" href="{$link}">{$menutitle}</a></li>',             
                'hereClass' => 'active'
   ])}
</li>
{/if}