<!DOCTYPE html>
<html dir="ltr" class="no-js" lang="{$_modx->config.cultureKey}" prefix="og: http://ogp.me/ns#">
{block 'meta'}
{/block}
<body class="body">

<!-- Google Tag Manager (noscript) --><noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-TZG9N8K" height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript><!-- End Google Tag Manager (noscript) -->

{include 'file:chunks/base_header.tpl'}

{block 'content'}
{/block}

{include 'file:chunks/base_footer.tpl'}

<!-- Scripts-->
{include 'file:chunks/base_scripts.tpl'}

{block 'script'}
{/block}

{$_modx->getChunk('YD')}
{$_modx->getChunk('GA')}
{$_modx->getChunk('VK')}
{$_modx->getChunk('FB')}
{$_modx->getChunk('B24')}

{block 'modal'}
{/block}
</body>
</html>