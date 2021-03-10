<!--footer-->
<footer class="footer bg-purple pt-4">
    <div class="container-lg">
        <div class="row ">
            <div class="col-9 col-sm-6 col-md-3 d-flex flex-column footer__links">
                <h6 class="font-weight-montserrat-700 text-white my-3 my-sm-2">Услуги и цены</h6>
                [[pdoMenu? 
                &parents=`0`
                &resources=`6,7,8,9,10,` 
                &level=`1`
                &tplOuter =`@INLINE [[+wrapper]]` 
                &tpl=`@INLINE <a href="[[+link]]" [[+attributes]] class="font-raleway-500 text-decoration-none my-1">[[+menutitle]]</a>`
                ]]

                <h6 class="font-weight-montserrat-700 text-white my-3 my-sm-2">SMM</h6>
                [[pdoMenu? &parents=`35` &tplOuter =`@INLINE [[+wrapper]]` &tpl=`@INLINE <a href="[[+link]]" [[+attributes]] class="font-raleway-500 text-decoration-none my-1">[[+menutitle]]</a>`]]
            </div>

            <div class="col-9 col-sm-6 col-md-3 d-flex flex-column footer__links">
                <h6 class="font-weight-montserrat-700 text-white my-3 my-sm-2">SEO продвижение</h6>
                [[pdoMenu? &parents=`3` &tplOuter =`@INLINE [[+wrapper]]` &tpl=`@INLINE <a href="[[+link]]" [[+attributes]] class="font-raleway-500 text-decoration-none my-1">[[+menutitle]]</a>`]]
            </div>

            <div class="col-9 col-sm-6 col-md-3 d-flex flex-column footer__links">
                <h6 class="font-weight-montserrat-700 text-white my-3 my-sm-2">Контекстная реклама</h6>
                [[pdoMenu? &parents=`30` &tplOuter =`@INLINE [[+wrapper]]` &tpl=`@INLINE <a href="[[+link]]" [[+attributes]] class="font-raleway-500 text-decoration-none my-1">[[+menutitle]]</a>`]]
            </div>

            <div class="col-9 col-sm-6 col-md-3 d-flex flex-column footer__links">
                <h6 class="font-weight-montserrat-700 text-white my-3 my-sm-2">Разработка сайта</h6>
                [[pdoMenu? &parents=`16` &tplOuter =`@INLINE [[+wrapper]]` &tpl=`@INLINE <a href="[[+link]]" [[+attributes]] class="font-raleway-500 text-decoration-none my-1">[[+menutitle]]</a>`]]
                
                <h6 class="font-weight-montserrat-700 text-white my-3 my-sm-2">Лицензии Битрикса</h6>
                [[pdoMenu? &parents=`44` &tplOuter =`@INLINE [[+wrapper]]` &tpl=`@INLINE <a href="[[+link]]" [[+attributes]] class="font-raleway-500 text-decoration-none my-1">[[+menutitle]]</a>`]]
            </div>

            <div class="col-12 col-lg-9 d-flex flex-column">
                <a href="sitemap.xml" class="d-block d-lg-none text-white font-weight-bold my-auto py-3">Карта сайта</a>
                <a href="tel:{'+phone' | placeholder}" class="h4 footer__link text-white font-weight-montserrat-700 mb-0">{'+phone' | placeholder}</a>
                <a href="mailto:{'+email' | placeholder}" class="footer__link text-white font-raleway-400">{'+email' | placeholder}</a>
                <p class="text-white font-raleway-400 text-center text-lg-left pt-3">Подпишитесь на удобную для вас соц. сеть, чтобы не пропустить актуальные новости и акции</p>
                <p class="d-none d-lg-block text-white-50 font-raleway-400">Предложение на сайте не является публичной офертой</p>
            </div>

            <div class="col-12  col-lg-3 d-flex flex-column pt-2 px-2">
                <a href="sitemap.xml" class="d-none d-lg-block text-white font-weight-montserrat-700 my-auto h6">Карта сайта</a>
                <div class="d-flex justify-content-center justify-content-lg-between my-auto">
                      {if '+twitter' | placeholder}        
                       <a href="{'+twitter' | placeholder}" class="mx-2 mx-lg-0" target="_blank">
                        <img src="./assets/templates/savin-piar/img/footer/twitter.png" alt="Наша страница в Twitter" height="39" width="39" />
                    </a>
                    {/if}
                    {if '+vk' | placeholder}
                    <a href="{'+vk' | placeholder}" class="mx-2 mx-lg-0" target="_blank">
                        <img src="./assets/templates/savin-piar/img/footer/vk.png" alt="Наша страницв во Вконтакте" height="39" width="39" />
                    </a>
                    {/if}
                    {if '+facebook' | placeholder}
                    <a href="{'+facebook' | placeholder}" class="mx-2 mx-lg-0" target="_blank">
                        <img src="./assets/templates/savin-piar/img/footer/facebook.png" alt="Наша страница в Facebook" height="39" width="39" />
                    </a>
                    {/if}
                    {if '+instagram' | placeholder}
                    <a href="{'+instagram' | placeholder}" class="mx-2 mx-lg-0">
                        <img src="./assets/templates/savin-piar/img/footer/instagram.png" alt="Наша страница в Instagram" height="39" width="39" />
                    </a>
                    {/if}
                    {if '+youtube' | placeholder}
                    <a href="{'+youtube' | placeholder}" class="mx-2 mx-lg-0" target="_blank">
                        <img src="./assets/templates/savin-piar/img/footer/you-tube.png" alt="наш канал на Youtube" height="39" width="39" />
                    </a>
                    {/if}  
                </div>
                <p class="d-block d-lg-none text-center text-lg-left text-white-50 font-raleway-400 pt-3">Предложение на сайте не является публичной офертой</p>
                <p class="text-center text-lg-left text-white-50 font-raleway-400 my-auto">ООО "Савин-Пиар" 2019-{'' | date : 'Y'} г.</p>
            </div>

        </div>
    </div>
</footer>
{$_modx->getChunk('YD')}
{$_modx->getChunk('GA')}
{$_modx->getChunk('VK')}
{$_modx->getChunk('FB')}
{$_modx->getChunk('B24')}