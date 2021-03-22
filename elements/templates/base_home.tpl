<!DOCTYPE html>
<html dir="ltr" class="no-js" lang="{$_modx->config.cultureKey}" prefix="og: http://ogp.me/ns#">
{block 'meta'}
{/block}
<body class="body">
<button id="toTop" class="btn btn-warning position-fixed d-none m-3  bottom-0 end-0 z-3">
    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="#ffc107" stroke="#fff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-arrow-up"><line x1="12" y1="19" x2="12" y2="5"></line><polyline points="5 12 12 5 19 12"></polyline></svg>
</button>
{include 'file:chunks/base_header_v2.tpl'}
{block 'content'}
{/block}

{include 'file:chunks/base_footer.tpl'}


{block 'script'}
{/block}


{block 'modal'}
{/block}
</body>
</html>