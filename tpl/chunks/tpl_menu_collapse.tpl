

   {$_modx->runSnippet("!pdoMenu", [
                "parents" => $id,
                "level" => 0,
                'tplOuter' => '@INLINE <nav class="nav flex-column px-3">{$wrapper}</nav>',
                'tpl' => '@INLINE <a class="nav-link [[+classnames]]" href="{$link}">{$menutitle}</a>',             
                'hereClass' => 'active'
   ])}
