{set $rows = json_decode($id | resource: 'about-company')}
{if $rows}
    <section class="section-about-company py-4">
        <div class="container-xxl">
            <h2 class="text-start fw-bold mt-4">{if $id | resource: 'about-company-title'}
                    {$id | resource: 'about-company-title'}
                {else}
                    О компании
                {/if}
            </h2>

            <div class="row">
                {foreach $rows as $index => $row}
                    {if $row}
                        <div class="col-6 col-lg-4">
                            <div class="row flex-column">
                                {if $row['image']}
                                    <div class="col-5 col-sm-4">
                                        <img src="./assets/files/{$row['image']}" alt="digital-marketing"
                                             class="img-fluid d-block me-auto py-3">
                                    </div>
                                {/if}
                                {if $row['description']}
                                    <div class="col-12">
                                        {$row['description']}
                                    </div>
                                {/if}
                            </div>
                        </div>
                    {/if}
                {/foreach}
            </div>
            <div class="row justify-content-center">
                <div class="col-9 col-md-4 pt-4">
                    {if $id | resource: 'about-company-button-id' && $id | resource: 'about-company-button-name'}
                        <button type="button"
                                class="btn btn-warning sct-header__btn  btn-data__modal text-white text-uppercase w-100 p-0"
                                data-id="{$id | resource: 'about-company-button-id'}">
                            {$id | resource: 'about-company-button-name'}</button>
                    {/if}
                    <p class="text-center pt-3">{$id | resource: 'about-company-description'}</p>
                </div>
            </div>
        </div>
    </section>
{/if}