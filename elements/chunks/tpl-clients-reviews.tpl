{set $rows = json_decode($id | resource: 'seo-review')}
{if $rows}
<section class="section-clients-reviews container-lg mb-16">
    <div class="d-flex flex-column align-items-center">
        <h2 class="display-3 text-uppercase text-center font-weight-montserrat-900 mb-6">{$pagetitle}</h2>
        <div class="row align-items-center justify-content-center">
            <div id="clientsReviewsIndicators" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                {foreach $rows as $index => $row}                    
                        <li data-target="#clientsReviewsIndicators" data-slide-to="{$index}" class="mx-4 {$index == '0' ? 'active' : '' }"></li>
                {/foreach}
                </ol>
                <div class="carousel-inner pb-12 pb-md-20">
                {foreach $rows as $index => $row}    
                    <div class="carousel-item {$index == '0' ? 'active' : '' }">
                        <div class="card border-0 m-3">
                            <div class="row no-gutters">
                                <div class="col col-md-6 col-lg-8">
                                    <div class="card-body mt-4">
                                            {$row.company}
                                        <hr class="my-10">
                                            {$row.solution}  
                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-4 card-img-wrapper d-block">
                                    <div class="d-flex align-items-center h-100">
                                        <img src="./assets/files/{$row.image}" class="img-fluid d-block m-auto" alt="contract">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                {/foreach}       
                </div>
            </div>
        </div>
    </div>
</section>
 {/if}