{set $rows = json_decode($id | resource: 'our-services-header')}

{if $rows}
    <section class="section-our-services bg-light py-4">
        <div class="container-xxl">
            <h2 class="text-start fw-bold mt-4">{$id | resource : 'our-services-title'}</h2>
            <div class="row pt-3">
                {foreach $rows as $index => $row}
                    {if $row}
			<div class="col-12 col-md-6 col-lg-4 my-2 px-2">
            		    <div class="card border-0 align-items-center justify-content-center h-100"
             		        style="background-image: url(./assets/files/{$row['image']});">
            		        <h3 class="h5 z-1 text-center text-uppercase m-0 p-4">{$row['title']}</h3>
             		       <a href="{$_modx->makeUrl($row['link'])}" class="btn w-100 z-2 p-3 stretched-link position-absolute">
              		      </a>
            		    </div>
            		</div>
                    {/if}
                {/foreach}
            </div>
    </section>
{/if}