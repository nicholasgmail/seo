<li class="splide__slide z-1 p-sm-3">
    <div class="card text-white border-0">
        <img data-splide-lazy="{$id | resource : 'tv.image_cases'}" class="card-img" alt="{$id | resource : 'longtitle'}">
        <div class="card-img-overlay text-white top-42 top-35 position-absolute start-50 translate-middle w-90">
            <h3 class="h5 card-title text-white mb-3">{$id | resource : 'longtitle'}</h3>
            <h4 class="h3 card-text text-white">{$id | resource : 'pagetitle'}</h4>
            <a href="{$_modx->makeUrl($id)}" style="line-height: 2.7;" class="btn btn-outline-warning border-2 sct-cases__btn mt-3 text-uppercase p-0">Просмотреть</a>
        </div>
    </div>
</li>