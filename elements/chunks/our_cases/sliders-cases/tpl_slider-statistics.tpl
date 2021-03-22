{set $rows = json_decode($id | resource: 'carusel1')}
{if $rows}

    <section class="sct-website-promotion py-4">
        <div class="container-xxl">
            <h2 id="website-promotion" class="fw-bold">{$id | resource: 'title_cases'}</h2>
            <p>{$id | resource: 'description_cases'}</p>

            <div id="website-promotion-splide" class="splide shadow">
                <div class="splide__arrows">
                   <button class="splide__arrow splide__arrow--prev" style="left: 0;">
                      <img src="./assets/templates/savin-piar_v2/img/arrow_prev.png" alt="prev">
                   </button>
                   <button class="splide__arrow splide__arrow--next" style="right: 0;">
                      <img src="./assets/templates/savin-piar_v2/img/arrow_next.png" alt="next">
                   </button>
                </div>
                <div class="splide__track">
                   <ul class="splide__list">
                       
                    {foreach $rows as $index => $row}
                    {if $row}

                      <li class="splide__slide z-1">
                         <div class="card">
                            <div class="row">
                                <div class="col-12 col-md-6 ps-5 py-4 card-left">
                                    {if $row['description']}
                                    
                                        {$row["description"]}
                                    
                                    {/if}
                                </div>
                                <div class="col-12 col-md-6 card-right" >
                                    <div class="card-right__bg h-100 pt-3 pb-5 px-5">
                                        
                                        {if $row['description-image1']}
                                            {$row["description-image1"]}
                                        {/if}
                                        
                                        {if $row['image1']}
                                        <img src="./assets/files/{$row['image1']}" alt="{$row['alt1']}" title="{$row['title1']}" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                        {/if}
                                        
                                        {if $row['description-image2']}
                                            {$row["description-image2"]}
                                        {/if}
                                        
                                        {if $row['image2']}
                                        <img src="./assets/files/{$row['image2']}" alt="{$row['alt2']}" title="{$row['title2']}" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                        {/if}
                                    </div>
                                </div>
                            </div>
      
                         </div>
                      </li>
                    {/if}
                    {/foreach}
  
                   </ul>
                </div>
            </div>
        </div>
    </section>
{/if}

        