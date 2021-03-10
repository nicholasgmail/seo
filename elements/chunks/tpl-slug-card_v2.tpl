


{var $rows = json_decode($_pls['tv.services-list-price'])}
{var $pg_longtitle =  $id | resource: 'longtitle'}
{var $tv_image =  $id | resource: 'image-page'}
{var $tv_info =  $id | resource: 'list-info-price'}
{var $tv_btform =  $id | resource: "button-form1"}
{var $tv_btname =  $id | resource: "button-name1"}

<div class="col-12 col-md-6 col-lg-4 mt-3 item">
                <div class="card bg-dark text-white h-100" style='background-image:url({$tv_image})'>
                   <div class="card-body d-flex justify-content-between flex-column z-1">
                      <h3 class="h3 card-title text-decoration-underline text-white fw-bold text-center">{$pg_longtitle}
                      </h3>
                      <p class="card-title text-white mt-3 mb-2 fw-bold">Что вы получаете:</p>
                      <div class="card-content mb-3">
                         <ul>
                          {foreach $rows as $index => $row} 
                         <li>
                           {$row.list}
                         </li>
                         {/foreach}
                         </ul>
                      </div>
                      <div class="py-3">
                           {$tv_info}                         
                      </div>
                      <div class="row row-cols-2">
                      {if  $tv_btform}
                         <div class="col">
                            <button type="button" class="btn btn-data__modal btn-outline-warning border-2 w-100"
                            data-id="{$tv_btform}">
                            Заказать</button>
                         </div>
                      {/if}
                         <div class="col">
                            <a href="{$id | url}"type="button" class="btn btn-outline-warning border-2 w-100">Подробней</a>
                         </div>
                      </div>
                   </div>
                </div>
             </div>
