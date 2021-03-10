<header class="header z-5">
   <nav class="navbar navbar-expand-lg container-xl bg-transparent">
         <div class="row justify-content-between align-items-center w-100 flex-nowrap no-gutters">
            <div class="col-7 col-sm-5 col-md-4 col-lg-3 pr-md-3 px-lg-2 mb-0 order-1 order-lg-0">
               <a class="navbar__logo h6 d-flex align-items-end font-weight-montserrat-700 text-white text-break mb-0"
                  href="/">
                  {if '+logo' | placeholder}
                  <img src="{'+logo' | placeholder}" class="img-fluid d-block mx-auto pr-3 w-40" alt="{'+logo-text' | placeholder}" title="{'+logo-text' | placeholder}" loading="lazy">{'+logo-text' | placeholder}</a>
               {/if}
            </div>
           <div class="col-2 d-lg-none z-6 order-3 text-right">
                <button id="humburger" class="hamburger hamburger__spin position-relative pb-1 pb-sm-0" type="button" style="left: 0px;">
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
               'tplOuter' => '@INLINE <menu class="nav-items nav-level-1 list-unstyled mt-0 pt-16 mb-0"> 
               <li class="nav-item"><a class="nav__link nav__link-ripple-out"  href="{$parent | url}">{$parent | resource: "menutitle"}<span class="sr-only">
                        {$id | resource: "menutitle"}</span></a></li>
               {$wrapper}<div class="px-5 py-10">
                     <div class="nav-drill__info d-flex justify-content-between flex-sm-column flex-md-row text-center border-top pt-4">
               {if "+phone" | placeholder}
               <a href="tel:{"+phone" | placeholder}" class="header__link p-3 header__link_background_gray h6 text-white font-weight-montserrat-700 shadow">{"+phone" | placeholder}</a>
               {/if}
               {if "+email" | placeholder}
               <a href="mailto:{"+email" | placeholder}" class="header__link p-3 header__link_background_gray h6 text-white font-weight-montserrat-700 shadow">{"+email" | placeholder}</a>
               {/if}
            </div>
                    <ul class="header__list  list-unstyled d-flex justify-content-between pt-4">
                   {if "+vk" | placeholder}
                  <li class="p-3 shadow">
                     <a href="{"+vk" | placeholder}" target="_blank">
                        <img src="./assets/templates/savin-piar/img/soc/vk.png" height="25" width="25" title="vk"
                           alt="vk">
                     </a>
                  </li>
                  {/if}
                  {if "+twitter" | placeholder}
                  <li class="p-3 shadow">
                     <a href="{"+twitter" | placeholder}" target="_blank">
                        <img src="./assets/templates/savin-piar/img/soc/twitter.png" height="25" width="25"
                           title="twitter" alt="twitter">
                     </a>
                  </li>
                  {/if}
                  {if "+instagram" | placeholder}
                  <li class="p-3 shadow">
                     <a href="{"+instagram" | placeholder}" target="_blank">
                        <img src="./assets/templates/savin-piar/img/soc/inst.png" height="25" width="25"
                           title="instagram" alt="instagram">
                     </a>
                  </li>
                  {/if}
                  {if "+facebook" | placeholder}
                  <li class="p-3 shadow">
                     <a href="{"+facebook" | placeholder}" target="_blank">
                        <img src="./assets/templates/savin-piar/img/soc/facebook.png" height="25" width="25"
                           title="facebook" alt="facebook">
                     </a>
                  </li>
                  {/if}
                   {if "+youtube" | placeholder}
                  <li class="p-3 shadow">
                     <a href="{"+youtube" | placeholder}" target="_blank">
                        <img src="./assets/templates/savin-piar/img/soc/youtube.png" height="25" width="25"
                           title="youtube" alt="youtube">
                     </a>
                  </li>
                  {/if}
               </ul>
                </div></menu>',
               'tpl' => '@INLINE <li class="nav-item"><a class="nav__link nav__link-ripple-out"  href="{$link}">{$menutitle}<span class="sr-only">
                        ({$menutitle})</span></a></li>',
               
               'tplParentRow' => '@INLINE  <li class="nav-item nav-expand">
                  <a class="nav__link nav-expand__link nav__link-ripple-out" href="#">{$menutitle}</a><span class="sr-only">(current)</span>
                  <ul class="nav-items nav-expand-content list-unstyled"> 
                  <li class="nav-item"><a class="nav__link nav__link-ripple-out"  href="{$parent | url}">{$parent | resource: "menutitle"}<span class="sr-only">
                        {$parent | resource: "menutitle"}</span></a></li>
                  <li class="nav-item"><a class="nav__link nav__link-ripple-out"  href="{$link}">{$menutitle}<span class="sr-only">
                        {$menutitle}</span></a></li>
                  {$wrapper}<div class="px-5 py-10">
                     <div class="nav-drill__info d-flex justify-content-between flex-sm-column flex-md-row text-center border-top pt-4">
               {if "+phone" | placeholder}
               <a href="tel:{"+phone" | placeholder}" class="header__link p-3 header__link_background_gray h6 text-white font-weight-montserrat-700 shadow">{"+phone" | placeholder}</a>
               {/if}
               {if "+email" | placeholder}
               <a href="mailto:{"+email" | placeholder}" class="header__link p-3 header__link_background_gray h6 text-white font-weight-montserrat-700 shadow">{"+email" | placeholder}</a>
               {/if}
            </div>
                    <ul class="header__list list-unstyled d-flex justify-content-between pt-4">
                   {if "+vk" | placeholder}
                  <li  class="p-3 shadow">
                     <a href="{"+vk" | placeholder}" target="_blank">
                        <img src="./assets/templates/savin-piar/img/soc/vk.png" height="25" width="25" title="vk"
                           alt="vk">
                     </a>
                  </li>
                  {/if}
                  {if "+twitter" | placeholder}
                  <li class="p-3 shadow">
                     <a href="{"+twitter" | placeholder}" target="_blank">
                        <img src="./assets/templates/savin-piar/img/soc/twitter.png" height="25" width="25"
                           title="twitter" alt="twitter">
                     </a>
                  </li>
                  {/if}
                  {if "+instagram" | placeholder}
                  <li class="p-3 shadow">
                     <a href="{"+instagram" | placeholder}" target="_blank">
                        <img src="./assets/templates/savin-piar/img/soc/inst.png" height="25" width="25"
                           title="instagram" alt="instagram">
                     </a>
                  </li>
                  {/if}
                  {if "+facebook" | placeholder}
                  <li class="p-3 shadow">
                     <a href="{"+facebook" | placeholder}" target="_blank">
                        <img src="./assets/templates/savin-piar/img/soc/facebook.png" height="25" width="25"
                           title="facebook" alt="facebook">
                     </a>
                  </li>
                  {/if}
                   {if "+youtube" | placeholder}
                  <li class="p-3 shadow">
                     <a href="{"+youtube" | placeholder}" target="_blank">
                        <img src="./assets/templates/savin-piar/img/soc/youtube.png" height="25" width="25"
                           title="youtube" alt="youtube">
                     </a>
                  </li>
                  {/if}
               </ul>
                </div></ul></li>',               
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
               <menu class="navbar-nav mt-auto mx-auto">               
               {$_modx->runSnippet("!pdoMenu", [
               "parents" => 0,
               "level" => 2,
               'tplOuter' => '@INLINE {$wrapper}',
               'tpl' => '@INLINE <li class="nav-item p-2 rounded-pill [[+classnames]]"><a
                     class="nav-link h-6 font-weight-montserrat-700 text-center text-white text-decoration-none"
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
            <div class="col col-md-3 mb-0 order-2 order-lg-3">
                <div class="d-flex flex-row flex-md-column align-items-center justify-content-around align-items-md-end">
               {if '+phone' | placeholder}
               <a href="tel:{'+phone' | placeholder}" class="header__link h5 text-white font-weight-montserrat-700 mb-0 p-2 p-md-0">
                   <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-telephone-fill text-white d-md-none" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                      <path fill-rule="evenodd" d="M2.267.98a1.636 1.636 0 0 1 2.448.152l1.681 2.162c.309.396.418.913.296 1.4l-.513 2.053a.636.636 0 0 0 .167.604L8.65 9.654a.636.636 0 0 0 .604.167l2.052-.513a1.636 1.636 0 0 1 1.401.296l2.162 1.681c.777.604.849 1.753.153 2.448l-.97.97c-.693.693-1.73.998-2.697.658a17.47 17.47 0 0 1-6.571-4.144A17.47 17.47 0 0 1 .639 4.646c-.34-.967-.035-2.004.658-2.698l.97-.969z"/>
                    </svg>
                   <span class="d-none d-md-flex">{'+phone' | placeholder}</span></a>
               {/if}
               {if '+email' | placeholder}
               <a href="mailto:{'+email' | placeholder}" class="header__link h6 text-white font-weight-montserrat-700 mb-0 p-2 p-md-0" >
                   <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-envelope-fill text-white d-md-none" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd" d="M.05 3.555A2 2 0 0 1 2 2h12a2 2 0 0 1 1.95 1.555L8 8.414.05 3.555zM0 4.697v7.104l5.803-3.558L0 4.697zM6.761 8.83l-6.57 4.027A2 2 0 0 0 2 14h12a2 2 0 0 0 1.808-1.144l-6.57-4.027L8 9.586l-1.239-.757zm3.436-.586L16 11.801V4.697l-5.803 3.546z"/>
                    </svg>
                   <span class="d-none d-md-flex">{'+email' | placeholder}</span>
                   </a>
               {/if}
            </div>
            </div>
         </div>
   </nav>
</header>
<div class="d-sm-none pt-10"></div>