

   {$_modx->runSnippet("!pdoMenu", [
                "parents" => $id,
                "level" => 0,
                'tplOuter' => '@INLINE <ul class="nav-items nav-expand-content list-unstyled">{$wrapper}</ul>',
                'tpl' => '@INLINE <li class="nav-item"><a class="nav-link [[+classnames]]" href="{$link}">{$menutitle}</a></li>',             
                'hereClass' => 'active'
   ])}
