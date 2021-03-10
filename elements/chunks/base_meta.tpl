
    <meta charset="{$_modx->config.modx_charset}" />
    <base href="{$_modx->config.site_url}">
    <meta name="description" content="{$_modx->resource.description}">
    <meta name="keywords" content="{$_modx->resource.seokeywords}">
    <meta name="yandex-verification" content="29ab14ea79936bc1" />
    {$_modx->runSnippet("!Canonical")}
    
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    {if $_modx->resource.searchable}
    <meta name="robots" content="index,follow">
    {else}
    <meta name="robots" content="noindex,nofollow">
    {/if}
    <title>{$_modx->resource.seotitle?: $_modx->resource.pagetitle}</title>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700;800;900&family=Raleway:wght@400;500&display=swap"
    rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/5.4.5/css/swiper.min.css">
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/lightgallery/1.8.3/css/lightgallery.min.css">
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/lightgallery/1.8.3/css/lg-transitions.min.css">
    <link rel="stylesheet" href="./assets/templates/savin-piar/css/bootstrap.css">
    <!-- SAVA -->
    <!-- <link rel="stylesheet" href="./assets/templates/savin-piar/css/bootstrap-4.5.3-dist/css/bootstrap.min.css">-->
    
    <link rel="stylesheet" href="./assets/templates/savin-piar/css/style.css">
    <link rel="stylesheet" href="./assets/templates/savin-piar/css/main.css">
    <!-- openGraph -->
	<meta property="og:title" content="{$_modx->resource.seotitle?: $_modx->resource.pagetitle}">
	<meta property="og:description" content="{$_modx->resource.description}">
	<meta property="og:image" content="{$_modx->config.site_url}assets/templates/savin-piar/img/header/logo.png">
	<meta property="og:type" content="og:product">
	<meta property="og:url" content="{$_modx->config.site_url}">
	<meta property="og:site_name" content="{$_modx->config.site_name}">
	<!--twitter-->
	<meta name="twitter:card" content="summary"/>  <!-- Тип окна -->
	<meta name="twitter:site" content="savin-piar.ru">
	<meta name="twitter:title" content="{$_modx->resource.seotitle?: $_modx->resource.pagetitle}">
	<meta name="twitter:description" content="{$_modx->resource.description}">
	<meta name="twitter:creator" content="rf-print.ru">
	<meta name="twitter:image:src" content="{$_modx->config.site_url}assets/templates/savin-piar/img/header/logo.png">
	<meta name="twitter:domain" content="{$_modx->config.site_url}">
	<!-- Google Plus. -->
	<meta itemprop="name" content="{$_modx->config.site_url}">
	<meta itemprop="description" content="{$_modx->resource.description}">
	<meta itemprop="image" content="{$_modx->config.site_url}assets/templates/savin-piar/img/header/logo.png">
    <!--[if IE]><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
    <!-- Google Tag Manager -->
    <script>(function(w,d,s,l,i){ w[l]=w[l]||[];w[l].push({ 'gtm.start':new Date().getTime(),event:'gtm.js' });var f=d.getElementsByTagName(s)[0],j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src='https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f); })(window,document,'script','dataLayer','GTM-TZG9N8K');</script>
    <!-- End Google Tag Manager -->