    <nav aria-label="breadcrumb">
        {$_modx->runSnippet("pdoCrumbs", [
        'showHome' => 1,
        'tpl' => '@INLINE <li class="breadcrumb-item  fs-7 z-1"><a class="text-decoration-none text-dark l_c_{$id}" href="{$link}">{$menutitle}</a></li>',
        'tplCurrent' => '@INLINE <li class="breadcrumb-item fs-7 active z-1 ps-3" aria-current="page"><a class="text-decoration-none text-white-50">{$menutitle}</a></li>',
        'tplWrapper' => '@INLINE <ol class="breadcrumb">{$output}</ol>'
        ])}
    </nav>

