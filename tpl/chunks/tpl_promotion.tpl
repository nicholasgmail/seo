

{set $rows = json_decode($id | resource: 'seo-promotion')}
{foreach $rows as $key => $row}
<div class="col-12 col-sm-6 col-md-5 col-lg-3 mb-5">
    <div class="card border-0 card-promotion position-relative overflow-hidden mb-3">
        <div class="card-promotion__bage position-absolute z-1"><h6 class="font-size-47 font-weight-montserrat-800 text-white">{$key + 1}</h6></div>
        <div class="card-svg position-absolute"><i class="card-svg__icon card-svg__icon-1"></i></div>
        <div class="card-body text-center p-4">
          <img class="img-fluid mr-auto d-block" src="{$row['img']}" alt="seo">
         <h6 class="card-title font-weight-montserrat-900 text-uppercase my-6">{$row['title']}</h6>
            {$row['description']}
        </div>
    </div>
</div>
{/foreach}
