
<div class="col-12 col-sm-6 col-md-5 col-lg-4 mb-5">
   <div class="card card-tariffs position-relative mb-3">   
      <h4 class="card-header card-tariffs__heder {$id == '3' ? 'header-left py-10 px-2' : ''} {$id == '30' ? 'header-center py-6 px-6' : ''} {$id == '33' ? 'header-right py-10 px-2' : ''} {$id == '16' ? 'header-left py-10 px-2' : ''} {$id == '43' ? 'header-center py-6 px-2' : ''} {$id == '42' ? 'header-right py-10 px-2' : ''}  font-size-27 text-center text-white font-weight-montserrat-800 ">
         {$pagetitle} </h4>
      <div class="card-body">
         <h5 class="card-title font-size-30 font-weight-montserrat-900 text-center">{$_pls['tv.services-price']}</h5>
         <ul class="card-text list-unstyled">
            {$_pls['tv.service-list']}
         </ul>
         <div class="px-4">
            <a href="{$id | url}"
               class="btn btn-gradient btn-matrix text-center text-white d-block br-radius-35 font-size-14 text-uppercase font-weight-montserrat-800  py-6">Узнать
               подробнее</a>
         </div>

      </div>
   </div>
</div>