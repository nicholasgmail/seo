{set $rows = json_decode($id | resource: 'will-get')}

{if $rows}
    <section class="section-you-will-get py-4">
        <div class="container-xxl">
            <h2 class="text-start fw-bold mt-4">{if $id | resource: 'will-get-title'}
                    {$id | resource: 'will-get-title'}
                {/if}
            </h2>
            <div class="row pt-3">
                {foreach $rows as $index => $row}
                    {if $row}
                        <div class="col-6 col-sm-4 col-lg-3 py-2">
                            <div class="card h-100 bg-light">
                                <div class="card-body ">
                                    <img src="./assets/templates/savin-piar_v2/img/h3-line.jpg" class="ms-0 pb-2" alt="line">
                                    <h3 class="h5 fw-bold pb-2">
                                        {$row['will-title']}
                                    </h3>
                                    <div class="card-text">
                                        {$row['will-description']}
                                    </div>
                                </div>
                            </div>
                        </div>
                    {/if}
                {/foreach}
            </div>
        </div>
    </section>
{/if}