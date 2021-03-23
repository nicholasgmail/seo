{set $rows = json_decode($id | resource: 'carusel2')}
{if $rows}
    <section class="sct-development-cases bg-light py-4">
        <div class="container-xxl">
            <h2 class="fw-bold">{$id | resource: 'title_cases'}</h2>
            
            <div id="development-cases-splide" class="splide shadow">
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
                         <div class="card h-100">
                            <div class="row px-5 py-4">
                                <div class="col-12 col-md-6 card-left d-flex flex-column align-self-end">
                                    {if $row['description-before']}
                                        {$row["description-before"]}
                                    {/if}
                        
                                    <h4 class="text-center card-left__before">Было</h4>
                                    
                                    {if $row['image1']}
                                        <img src="./assets/files/{$row['image1']}" alt="{$row['alt1']}" title="{$row['title1']}" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                    {/if}
                                </div>
                        
                                <div class="col-12 col-md-6 card-right d-flex flex-column align-self-end" >
                        
                                    {if $row['description-after']}
                                        {$row["description-after"]}
                                    {/if}
                        
                                    <h4 class="text-center card-left__after">Стало</h4>
                                    
                                    {if $row['image2']}
                                        <img src="./assets/files/{$row['image2']}" alt="{$row['alt2']}" title="{$row['title2']}" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                    {/if}
                        
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