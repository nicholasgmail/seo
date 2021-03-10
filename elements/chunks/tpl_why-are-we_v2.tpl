
  {set $rows = json_decode($id | resource: 'why-are-we')}
   {if $rows}
   <section class="why-are-we pt-5">
       <div class="container-xxl">
          <h2 class="text-start fw-bold mb-4 mb-md-5">Почему Мы?</h2>
          <div class="row">
           {foreach $rows as $index => $row}
            {if $row}
             <div class="col-12 col-md-6">
                <div class="card mb-3 border-0">
                   <div class="row g-0">
                   {if $row['image']}
                      <div class="col-2">                      
                       <img src="./assets/files/{$row['image']}" class="mg-fluid d-block m-auto" title='{$row["description"]}' alt="{$_modx->resource.longtitle}">
                      </div>
                      {/if}
                      <div class="col-10">
                         <div class="card-body pe-0">
                            {$row['description']}
                         </div>
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