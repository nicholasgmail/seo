{set $rows = json_decode($id | resource: 'stack-home')}
{if $rows}
    <section class="section-our-team py-4">
        <div class="container-xxl">
            {if $id | resource: 'stack-home-title'}
                <h2 class="text-start fw-bold mt-4">{$id | resource: 'stack-home-title'}</h2>
            {/if}
            <div class="row">
                {foreach $rows as $index => $row}
                    {if $row}
                        <div class="col-12 col-sm-4 col-lg-2 py-2">
                            <div class="card h-rem-7">
                                <img src="./assets/files/{$row['image']}" class="img-fluid m-auto p-1"
                                     title="{$row['title']}" alt="{$row['alt']}">
                            </div>
                        </div>
                    {/if}
                {/foreach}
            </div>
        </div>
    </section>
{/if}