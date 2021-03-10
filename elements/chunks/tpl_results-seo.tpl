
{set $rows = json_decode($_pls['tv.seo-results-img'])}
{if $rows}
<section class="section-results-seo mb-16">
    <div class="d-flex align-items-center flex-column">
    <div class="container-xl">
        <h2 class="display-3 text-uppercase text-center font-weight-montserrat-900 mb-6">{$_pls['tv.title-sliders']}</h2>
        <div class="row align-items-center justify-content-center">
            <div id="carouselExampleIndicators-1" class="carousel slide" data-ride="carousel" data-interval="2500">
                <ol class="carousel-indicators">
                    {foreach $rows as $index => $row}
                    <li data-target="#carouselExampleIndicators-1" data-slide-to="{$index}" class="mx-4 {$index==0 ? 'active' : ''}"></li>
                    {/foreach}
                </ol>
                <div id="thumbnialsGallery" class="carousel-inner pb-12 pb-md-20 thumbnials-gallery">
                    {foreach $rows as $index => $row}
                    <a class="carousel-item position-relative {$index==0 ? 'active' : ''}" href="./assets/files/{$row.image}">
                        <div class="d-flex align-items-center h-100">
                            <img src="./assets/files/{$row.image}" class="d-block img-fluid mx-auto w-60" title="{$row.title}" alt="{$row.alt}">
                        </div>
                    </a>
                    {/foreach}
                </div>
            </div>
            </div>
        </div>
    </div>
</section>
{/if}