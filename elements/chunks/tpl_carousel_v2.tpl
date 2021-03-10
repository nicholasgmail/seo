
  {set $rows = json_decode($id | resource: 'carousel')}
   {if $rows}
   <section class="first-positions pt-5">
       <div class="container-xxl">
          <h2 class="text-start fw-bold mb-5">Наши клиенты выходят в ТОП и занимают первые позиции по запросам</h2>
          <div class="row">
             <div class="col-12">
                <div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel">
                   <div class="carousel-indicators">
                   {foreach $rows as $index => $row}
                     {if $row}
                      <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="{$index}" {if $index == 0 } class="active"
                         aria-current="true"{/if} aria-label="Slide {$index}"></button>
                         {/if}
                      {/foreach}
                   </div>
                   <div class="carousel-inner">
                   {foreach $rows as $index => $row}
                        {if $row}
                      <div class="carousel-item {if $index == 0 } active {/if}" data-bs-interval="10000">
                         <img src="./assets/files/{$row['image']}" class="img-fluid m-auto d-block w-100" title='{$row["title"]}' alt="{$row['alt']}">
                      </div>
                         {/if}
                     {/foreach}
                   </div>
                   <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark"
                      data-bs-slide="prev">
                      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                      <span class="visually-hidden">Previous</span>
                   </button>
                   <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark"
                      data-bs-slide="next">
                      <span class="carousel-control-next-icon" aria-hidden="true"></span>
                      <span class="visually-hidden">Next</span>
                   </button>
                </div>
             </div>
          </div>
       </div>
    </section>
{/if}