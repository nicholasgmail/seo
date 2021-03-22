{set $rows = json_decode($id | resource: 'statist-home')}
{if $rows}
<section class="section-statistics pt-4">
    <div class="container-xxl">
        <h2 class="text-start fw-bold mb-4">{$id | resource: 'statist-home-title'}</h2>
        <div class="row">
            {foreach $rows as $index => $row}
            {if $row}
            <div class="col-12 col-md-6 mb-4">
                <div class="card bg-light h-100">
                    <div class="p-4">
                        <h3 class="card-title fw-bold">{$row['title']}</h3>
                        <p class="card-text">{$row['description']}</p>
                    </div>
                    <img src="./assets/files/{$row['img']}" class="card-img-top p-4" title="{$row['title']}" alt="{$id | resource: 'statist-home-title'}">
                </div>
            </div>
            {/if}
            {/foreach}
        </div>
    </div>
</section>
{/if}