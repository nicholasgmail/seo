<header class="header w-lg-100 px-0">
   <nav class="navbar navbar-expand-lg bg-transparent py-md-5">
      <div class="container-fluid container-lg">
         <div class="row justify-content-between align-items-center w-100">
            <div class="col-10 col-md-3 pr-md-3">
               <a class="navbar__logo h5 d-flex align-items-center font-weight-montserrat-400 text-white text-break"
                  href="#">
                  {if '+logo' | placeholder}
                  <img src="{'+logo' | placeholder}" class="img-fluid d-block mx-auto pr-3"
                     alt="{'+logo-text' | placeholder}" alt="{'+logo-text' | placeholder}" loading="lazy">{'+logo-text'
                  | placeholder}</a>
               {/if}
            </div>
            <div class="col-auto menu-icon d-lg-none" data-behaviour="toggle-menu-icon">
               <span class="menu-icon__bar">
            </div>
            <nav class="nav-mobile z-3 w-100 d-lg-none" data-element="toggle-nav">
               {$_modx->runSnippet("!pdoMenu", [
               "parents" => 0,
               "level" => 2,
               'tplOuter' => '@INLINE  <ul class="nav-mobile__list d-flex flex-column-reverse">{$wrapper}</ul>',
               'tpl' => '@INLINE <li class="nav-mobile__item text-decoration-none [[+classnames]] py-3"><a class="nav-mobile__link h5" href="{$link}">{$menutitle}<span class="sr-only">
                        ({$menutitle})</span></a></li>',
               'tplParentRow' => '@FILE chunks/tpl_menu_collapse_mobile.tpl',
               'hereClass' => 'active'
               ])}

              
            </nav>

            <div class="collapse navbar-collapse">

               {$_modx->runSnippet("!pdoMenu", [
               "parents" => 0,
               "level" => 2,
               'tplOuter' => '@INLINE <ul class="navbar-nav mr-auto">{$wrapper}</ul>',
               'tpl' => '@INLINE <li class="nav-item p-2 rounded-pill [[+classnames]]"><a
                     class="nav-link font-raleway-400 text-center text-white text-decoration-none"
                     href="{$link}">{$menutitle}<span class="sr-only">
                        ({$menutitle})</span></a></li>',
               'tplParentRow' => '@INLINE <li class="nav-item p-2 rounded-pill">
                  <a class="nav-link font-raleway-400 text-center text-white text-decoration-none"
                     data-toggle="collapse" href="#collapseMenu" role="button" aria-expanded="false"
                     aria-controls="collapseMenu">{$menutitle}</a> {$wrapper} <span class="sr-only">(current)</span>
               </li>',
               'tplInner' => '@INLINE <div class="collapse position-absolute z-4 w-55" id="collapseMenu">
                  <div class="card rounded-sm flex-row py-6 px-3 position-relative">
                     <a class="collapse__link text-indigo position-absolute font-weight-bold" href="{2 | url}"><u>Все
                           услуги</u></a>{$wrapper}</div>
               </div>',
               'tplInnerRow' => '@FILE chunks/tpl_menu_collapse.tpl',
               'hereClass' => 'active'
               ])}
              
            </div>
            <div class="d-none d-md-flex flex-column align-items-end">
               {if '+phone' | placeholder}
               <a href="tel:{'+phone' | placeholder}" class="h4 text-white font-weight-montserrat-700 mb-0">{'+phone' |
                  placeholder}</a>
               {/if}
               {if '+email' | placeholder}
               <a href="mailto:{'+email' | placeholder}" class="text-white font-raleway-400">{'+email' |
                  placeholder}</a>
               {/if}
            </div>
         </div>
      </div>
   </nav>
</header>