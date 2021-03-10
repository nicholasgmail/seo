
  {set $rows = json_decode($id | resource: 'seo-promotion')}
   {if $rows}
    <section class="actions-promotion pt-5">
       <div class="container-xxl">
          <h2 class="text-start fw-bold mb-3">{$rows | length} действий {$_modx->resource.longtitle}</h2>
          <div class="row row-cols-2 row-cols-md-3 pt-3">
            {foreach $rows as $index => $row}
            {if $row}
                    <div class="col">
                       <div class="card border-0">
                       {if $row['img']}
                          <img src="./assets/files/{$row['img']}" class="position-absolute card__number img-fluid d-block" title='{$row["title"]}' alt="{$_modx->resource.longtitle}">
                       {/if}
                          <div class="card-body p-0">
                             <h3 class='h4 lh-lg text-uppercase'>{$row['title']}</h3>                     
                              {$row['description']}
                          </div>
                       </div>
                    </div>
            {/if}
            {/foreach}
          </div>
       </div>
    </section>{/if}