{set $rows = json_decode($id | resource: 'our-team-home')}
{if $rows}
    <section class="sct-our-team py-4">
        <div class="container-xxl">
            <h2 class="text-start fw-bold mt-4 pb-3">{$id | resource: 'our-team-home-title'}</h2>
            {$id | resource: 'our-team-home-description'}
            <div class="row">
                {foreach $rows as $index => $row}
                    {if $row}
                        <div class="col-6 col-md-3">
                            <div class="card border-0 bg-transparent">
                                 {if $row['image']}
                                <div class="card-body card-photo position-relative ps-0 pb-0 pt-3 pe-3">
                                    <img src="./assets/files/{$row['image']}" class="img-fluid d-block m-auto z-1" alt="foto-1">
                                </div>
                                 {/if}
                                <div class="card-body">
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