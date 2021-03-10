{set $rows = json_decode($_pls['tv.our-team'])}

{if $rows}
      <div class="row pt-10">
         <div class="swiper-container gallery-top z-1">
            <div class="swiper-wrapper">
            
                {foreach $rows as $row}
               <div class="swiper-slide">
                  <div class="media flex-column flex-sm-row">
                     <div class="col-12 col-sm-4">
                        <img data-sizes="auto" data-src="./assets/files/{$row.foto}"
                           class="d-block img-fluid rounded lazyload" alt="...">
                     </div>
                     <div class="media-body col-12 col-sm-8 pt-5">
                        <div class="row row-cols-1 justify-content-end justify-content-md-center">
                           <div class="col-10 pt-3 pb-xl-10">
                              <p class="font-size-23">{$row.description}</p>
                           </div>
                           <div class="col-auto col-md-10 mt-xl-10">
                              <h4 class="font-weight-montserrat-700">{$row.fio}</h4>
                              <p>{$row.specialty}</p>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               {/foreach}
            </div>
         </div>
         <div class="col col-sm-8 section-our-tream__thumb z-2">
            <!-- Add Arrows -->
            <div class="swiper-button-next swiper-button-gray"></div>
            <div class="swiper-button-prev swiper-button-gray"></div>
            <div class="swiper-container gallery-thumbs">
               <div class="swiper-wrapper">
                {foreach $rows as $row}
                  <div class="swiper-slide">
                     <img data-sizes="auto" data-src="./assets/files/{$row.foto}"
                        class="d-block img-fluid m-auto rounded-circle lazyload" alt="...">
                  </div>
                  {/foreach}
               </div>                
            </div>
         </div>
      </div>
  {/if}