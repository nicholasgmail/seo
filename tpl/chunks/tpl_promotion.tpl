

{set $rows = json_decode($id | resource: 'seo-promotion')}

{foreach $rows as $index => $row}
{if $row}
<div class="col-6 col-sm-4 col-lg-3  py-3 py-md-2 px-2 mb-md-5">
    <div class="card h-100 border-0 card-promotion position-relative overflow-hidden mb-3">
        <div class="card-promotion__bage position-absolute z-1"><h6 class="font-size-47 font-weight-montserrat-800 text-white">{$index + 1}</h6></div>
        <div class="card-svg position-absolute"><i class="card-svg__icon card-svg__icon-1"></i></div>
        <div class="card-body text-center p-3">
          <img class="img-fluid mr-auto d-block" src="./assets/files/{$row['img']}" alt="seo">
         <h6 class="card-title font-size-sm-12 font-weight-montserrat-900 text-center text-uppercase my-3">{$row['title']}</h6>
            {$row['description']}
        </div>
    </div>
</div>
{/if}
{/foreach}
