{set $rows = json_decode($id | resource: 'why-order')}
{if $rows}
    <section class="section-why-order bg-light py-4">
        <div class="container-xxl">
            <h2 class="text-start fw-bold mt-4">{$id | resource: 'why-order-title'}</h2>
            <div class="row">
                {foreach $rows as $index => $row}
                    {if $row}
                        <div class="col-12 col-sm-6 col-lg-3 py-3">
                            <div class="card h-rem-16 bg-light w-100">
                                    {if $row['image']}
                                        <img src="./assets/files/{$row['image']}"
                                             class="card-img-top rounded-top" alt="{$id | resource: 'why-order-title'}">
                                    {/if}
                                <div class="card-body pb-0">
                                    {if $row['description']}
                                        {$row['description']}
                                    {/if}
                                </div>
                            </div>
                        </div>
                    {/if}
                {/foreach}
            </div>
        </div>
    </section>
{/if}