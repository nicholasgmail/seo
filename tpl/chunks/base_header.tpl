<header class="header">
   <nav class="navbar navbar-expand-lg container-xl bg-transparent py-md-5">
         <div class="row justify-content-between align-items-center w-100 flex-nowrap">
            <div class="col-9 col-sm-5 col-md-4 col-lg-3 pr-md-3">
               <a class="navbar__logo h6 d-flex align-items-center font-weight-montserrat-400 text-white text-break"
                  href="/">
                  {if '+logo' | placeholder}
                  <img src="{'+logo' | placeholder}" class="img-fluid d-block mx-auto pr-3 w-50" alt="{'+logo-text' | placeholder}" title="{'+logo-text' | placeholder}" loading="lazy">{'+logo-text' | placeholder}</a>
               {/if}
            </div>
           <div class="col-2 d-lg-none z-6">
                <button id="humburger" class="hamburger hamburger__spin" type="button">
                  <span class="hamburger-box">
                    <span class="hamburger-inner"></span>
                  </span>
                </button> 
            </div>
            <nav class="nav nav-drill">
               {$_modx->runSnippet("!pdoMenu", [
               "parents" => 0,
               "level" => 3,
		"displayStart" => 1,
               'tplOuter' => '@INLINE  <menu class="nav-items nav-level-1 list-unstyled mt-0 pt-16 mb-0">
               <li class="nav-item"><a class="nav__link nav__link-ripple-out"  href="{$parent | url}">{$parent | resource: "menutitle"}<span class="sr-only">
                        {$id | resource: "menutitle"}</span></a></li>
               {$wrapper}</menu>',
               'tpl' => '@INLINE <li class="nav-item"><a class="nav__link nav__link-ripple-out"  href="{$link}">{$menutitle}<span class="sr-only">
                        ({$menutitle})</span></a></li>',
               
               'tplParentRow' => '@INLINE  <li class="nav-item nav-expand">
                  <a class="nav__link nav-expand__link nav__link-ripple-out" href="#">{$menutitle}</a><span class="sr-only">(current)</span>
                  <ul class="nav-items nav-expand-content list-unstyled"> 
                  <li class="nav-item"><a class="nav__link nav__link-ripple-out"  href="{$parent | url}">{$parent | resource: "menutitle"}<span class="sr-only">
                        {$parent | resource: "menutitle"}</span></a></li>
                  <li class="nav-item"><a class="nav__link nav__link-ripple-out"  href="{$link}">{$menutitle}<span class="sr-only">
                        {$menutitle}</span></a></li>
                  {$wrapper}</ul></li>',               
               'tplInner' => '@INLINE {$wrapper}',
                'tplInnerRow' => '@INLINE                
                <li class="nav-item">
                  <a class="nav__link nav__link-ripple-out" href="{$link}">{$menutitle}</a>
                                        {insert "file:chunks/tpl_menu_collapse_sm.tpl"}         
                            </li>',                          
               'hereClass' => 'active'
               ])}

              
            </nav>

            <div class="collapse navbar-collapse">
               <menu class="navbar-nav mr-auto">               
               {$_modx->runSnippet("!pdoMenu", [
               "parents" => 0,
               "level" => 2,
               'tplOuter' => '@INLINE {$wrapper}',
               'tpl' => '@INLINE <li class="nav-item p-2 rounded-pill [[+classnames]]"><a
                     class="nav-link font-raleway-400 text-center text-white text-decoration-none"
                     href="{$link}">{$menutitle}<span class="sr-only">
                        ({$menutitle})</span></a></li>',
               'tplParentRow' => '@INLINE <li class="nav-item p-2 rounded-pill">
                  <a class="nav-link nav-link__collapse font-raleway-400 text-center text-white text-decoration-none"
                     data-toggle="collapse" data-link="{$link}" href="#collapseMenu" role="button" aria-expanded="false"
                     aria-controls="collapseMenu">{$menutitle}</a><span class="sr-only">(current)</span>
                     <div class="collapse position-absolute z-4 mt-4 w-80" id="collapseMenu" data-collapse-menu style="left: 50%; transform: translate(-50%, 0%);">
                  <div class="card rounded-sm flex-row py-6 px-3 position-relative flex-wrap">
                  <div class="position-absolute" style="bottom: 1%;">
               <a class="navbar__logo d-flex flex-wrap-reverse align-items-center font-weight-montserrat-400 font-size-10 text-break "
                  href="{$parent | url}">
                  {if "+logo" | placeholder}
                  {"+logo-text" | placeholder}
                  <img src="{"+logo" | placeholder}" class="img-fluid d-block ml-1" style="width: 8%;"
                     alt="{"+logo-text" | placeholder}" alt="{"+logo-text" | placeholder}" loading="lazy">
               {/if}</a>
            </div>
                     <a class="collapse__link text-indigo position-absolute font-weight-bold" href="{2 | url}"><u>Все
                           услуги</u></a>{$wrapper}</div>
               </div>
               </li>',
               'tplInner' => '@INLINE {$wrapper}',
                'tplInnerRow' => '@INLINE 
                <div class="card-body px-0">
                <a class="" href="{$link}" >
                               <h6 class="text-indigo h5 font-weight-bold pl-2 pb-4 mx-3">{$menutitle}</h6></a>
                               {insert "file:chunks/tpl_menu_collapse.tpl"}
                            </div>',
               'hereClass' => 'active'
               ])}
              </menu>
            </div>
            <div class="d-none d-md-flex flex-column align-items-end">
               {if '+phone' | placeholder}
               <a href="tel:{'+phone' | placeholder}" class="h4 text-white font-weight-montserrat-700 mb-0">{'+phone' |
                  placeholder}</a>
               {/if}
               {if '+email' | placeholder}
               <a href="mailto:{'+email' | placeholder}" class="h5 text-white font-raleway-400">{'+email' |
                  placeholder}</a>
               {/if}
            </div>
         </div>
   </nav>
</header>