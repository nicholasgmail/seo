
{set $rows = json_decode($_pls['tv.seo-results-img'])}
{if $rows}
<section class="section-results-seo mb-16">
    <div class="d-flex align-items-center flex-column">
<h2 class="display-3 text-uppercase text-center font-weight-montserrat-900 mb-6">{$_pls['tv.title-sliders']}</h2>
    <div class="container-xl">
        <div class="row align-items-center justify-content-center">
            <div id="carouselExampleIndicators-1" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    {foreach $rows as $index => $row}
                    <li data-target="#carouselExampleIndicators-1" data-slide-to="{$index}" class="{$index==0 ? 'active' : ''}"></li>
                    {/foreach}
                </ol>
                <div class="carousel-inner pb-12 pb-md-20">
                    {foreach $rows as $index => $row}
                    <div class="carousel-item {$index==0 ? 'active' : ''}">
                        <img src="./assets/files/{$row.image}" class="d-block w-100" title="{$row.title}" alt="{$row.alt}">
                    </div>
                    {/foreach}
                </div>
            </div>
            </div>
        </div>
    </div>
</section>
{/if}