
    <nav aria-label="breadcrumb">
        {$_modx->runSnippet("pdoCrumbs", [
        'showHome' => 1,
        'tpl' => '@INLINE <li class="breadcrumb-item  fs-7 z-1"><a class="text-decoration-none text-white l_c_{$id}" href="{$link}">{$menutitle}</a></li>',
        'tplCurrent' => '@INLINE <li class="breadcrumb-item fs-7 active text-white-50 z-1 ps-3" aria-current="page"><a class="text-decoration-none text-white" href="{$link}">{$menutitle}</a></li>',
        'tplWrapper' => '@INLINE <ol class="breadcrumb">{$output}</ol>'
        ])}
    </nav>

