
<div class="col-12 col-md-6 col-lg-4 mt-3 item">
        <div class="card bg-dark text-white border-0 h-100">
            <!-- style='background-image:url(assets/img/card-bg.jpg)' -->
            <img src="{$id | resource : 'tv.price-img'}" class="fluid-img rounded d-block m-auto w-100" alt="card">
            <div class="card-img-overlay d-flex align-items-end">
                <a href="{$id | url}" class="stretched-link text-decoration-none">
                    <h3 class="h5 card-title fw-bold text-start">
                        {$id | resource : 'longtitle'}
                    </h3>
                </a>
            </div>
        </div>
</div>
