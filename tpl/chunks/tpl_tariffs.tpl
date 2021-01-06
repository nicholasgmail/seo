{var $tv_price = $_pls['tv.price']}
{set $lists = $id | resource: 'services-list-price'| fromJSON}
{set $positionCard = $_pls['tv.position-card']}
{if $lists}
<div class="col-12 col-sm-6 col-md-5 col-lg-4 mb-5">
   <div class="card card-tariffs position-relative mb-3">   
      <h4 class="card-header card-tariffs__heder {$positionCard == 'left' ? 'header-left py-10 px-2' : ''} {$positionCard == 'center' ? 'header-center py-6 px-6' : ''} {$positionCard == 'right' ? 'header-right py-10 px-2' : ''} font-size-27 text-center text-white font-weight-montserrat-800 ">
         {$menutitle} </h4>
      <div class="card-body">
         <h5 class="card-title font-size-30 font-weight-montserrat-900 text-center">От {$_pls['tv.price']} &#8381;</h5>
         <ul class="card-text list-unstyled">
                 {foreach $lists as $list}
                  <li class="pb-2 position-relative">
                                <p class="font-size-14 font-raleway-500 font-family-raleway font-weight-light px-5 mb-0">{$list.list}</p>
                            </li>
                 {/foreach}
        </ul>
         <div class="px-4">
            <a href="{$id | url}"
               class="btn btn-gradient btn-matrix text-center text-white d-block br-radius-35 font-size-14 text-uppercase font-weight-montserrat-800  py-6">Узнать
               подробнее</a>
         </div>

      </div>
   </div>
</div>
{/if}