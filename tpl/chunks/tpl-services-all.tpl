
{var $tv_sizecard = $_pls['tv.size-card']}
{var $tv_priceimg = $_pls['tv.price-img']}
{var $tv_oldprice = $_pls['tv.old-price']}
{var $tv_price = $_pls['tv.price']}
 {if $tv_price}
   <div class="col-auto {$tv_sizecard == 8 ? 'col-md-8' : ''} {$tv_sizecard == 4 ? 'col-md-4' : ''} mb-5" style="min-height: 423px; max-height: 423px">
            <div class="card shadow-lg bg-dark text-white border-0 overflow-hidden  h-100">
               <img src="{$tv_priceimg}" class="img-fluid d-block m-auto h-100 w-100" alt="{$pagetitle}" title="{$pagetitle}">
               <div class="card-img-overlay d-flex align-items-end">                  
                  <a href="{$id | url}" class="stretched-link"></a>
                  <div class="row row-cols-2 no-gutters justify-content-between align-items-end w-100 px-0">
                     <div class="{$tv_sizecard == 8 ? 'col' : ''} {$tv_sizecard == 4 ? 'col-auto col-lg-7' : ''} ">
                        <h5 class="card-title font-weight-montserrat-800 text-white">{$menutitle}</h5>
                        <p class="card-link text-white m-0"><u>Подробней</u> <i class="bi-arrow-right-circle__icon"></i></p>
                     </div>
                     <div class="col-auto">
                         {if $tv_oldprice}
                        <p class="card-text text-white text-left"><s>{$tv_oldprice}</s>руб.</p>
                        {/if}
                        {if $tv_price}
                        <p class="card-text text-white text-left">от <strong class="h4 font-weight-montserrat-700">{$tv_price}</strong> руб.</p>
                        {/if}
                     </div>
                  </div>
               </div>
            </div>
   </div>
   {include 'file:chunks/base-services-all-child.tpl'}
   {$_modx->getPlaceholder('result-service-price-child')}
{/if}