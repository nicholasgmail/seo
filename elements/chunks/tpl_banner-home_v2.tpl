{if $id | resource : 'banner-home-title'}
<section class="rd-incr-sales position-relative" style='background-image:url({$id | resource : 'banner-home-img'})'>
    <div class="container-xxl py-5">
        <div class="row justify-content-center align-items-center flex-column">
            <div class="col col-lg-8 z-1">
                <div class="d-grid gap-1 text-white pt-4">
                    <h2 class="text-start fw-bolder text-white  text-center mb-4">{$id | resource : 'banner-home-title'}</h2>
                    <p class="text-start text-white text-center">{$id | resource : 'banner-home-description'}</p>
                </div>
            </div>
            <div class="col-11 col-sm-12 z-1 pb-4 pt-4">
                <div class="d-flex flex-column flex-sm-row flex-wrap gap-4 me-auto btn-header justify-content-center">
                    <div class="col-12 col-sm-5 col-lg-3">
                        <button type="button"
                                class="btn btn-outline-warning btn-data__modal rd-incr-sales__btn border-2 text-uppercase w-100 p-0"
                                data-id="{$id | resource : 'banner-button-form1'}"
                        >{$id | resource : 'banner-button-name1'}</button>
                    </div>
                    <div class="col-12 col-sm-5 col-lg-3">
                        <button type="button"
                                class="btn btn-outline-warning btn-data__modal rd-incr-sales__btn border-2 text-uppercase w-100 p-0"
                                data-id="{$id | resource : 'banner-button-form2'}"
                        >{$id | resource : 'banner-button-name2'}</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
{/if}