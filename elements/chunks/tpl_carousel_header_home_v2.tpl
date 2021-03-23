{set $rows = json_decode($id | resource: 'head-carousel')}
{if $rows}
    <section class="sct-header-home position-relative"
             style='background-image:url({$id | resource: "image-carousel-header"})'>
        <div class="container-xxl pb-5 py-lg-5">
            <div id="splide-header" class="splide">
                <div class="splide__arrows">
                    <button class="splide__arrow splide__arrow--prev">
                        <img src="./assets/templates/savin-piar_v2/img/arrow_prev.png" alt="prev">
                    </button>
                    <button class="splide__arrow splide__arrow--next">
                        <img src="./assets/templates/savin-piar_v2/img/arrow_next.png" alt="next">
                    </button>
                </div>
                <div class="splide__track">
                    <ul class="splide__list">
                        {foreach $rows as $index => $row}
                            {if $row}
                                <li class="splide__slide p-4 p-sm-0 z-1">
                                    <div class="row h-100 flex-column justify-content-center offset-sm-1 gx-md-0">
                                        <div class="col-10 col-sm-11 col-lg-8 z-1 pb-4">
                                            <div class="d-grid gap-1 text-white">
                                                <p class="display-3 text-start fw-bolder text-white mb-4 mb-sm-5">
                                                    {$row["title"]}
                                                </p>
                                                {$row["description"]}
                                            </div>
                                        </div>
                                        <div class="col-10 col-ms-11 col-md-10 z-1 pb-5">
                                            <div class="row flex-column flex-sm-row flex-wrap me-auto btn-header">
                                                {if $row["button1"] && $row["button-name1"]}
                                                    <div class="col-12 col-sm-6 col-lg-4 mb-3">
                                                        <button type="button"
                                                                class="btn btn-outline-warning border-2 sct-header-home__btn btn-data__modal text-uppercase w-100 p-0"
                                                                data-id="{$row["button1"]}">{$row["button-name1"]}</button>
                                                    </div>
                                                {/if}
                                                {if $row["button2"]  && $row["button-name2"]}
                                                    <div class="col-12 col-sm-6 col-lg-4 mt-3 mt-sm-0">
                                                        <a href="{$row["button2"] | url}"
                                                                style="line-height:3.5"
                                                                class="btn btn-outline-warning border-2 sct-header-home__btn text-uppercase w-100">{$row["button-name2"]}</a>
                                                    </div>
                                                {/if}
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            {/if}
                        {/foreach}
                    </ul>
                </div>
            </div>
        </div>
    </section>
{/if}