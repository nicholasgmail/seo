import $menuMobilejs from "./lib/mobile-menu";
import $imgAddClass from "./lib/img-add-class";
import $scroll from "./lib/scroll";
import { $scrollTo } from "./lib/scroll-back";
import $hamburger from "./lib/hamburger";

var $ready = (callback) => {
    if (document.readyState != "loading") callback();
    else document.addEventListener("DOMContentLoaded", callback);
}
$ready(() => {

    //константы
    const $dcElement = document.documentElement;

    $menuMobilejs();
    $imgAddClass();
    $scroll();
    $hamburger();
    //$splide();
    // let $collapseMenu = document.querySelector('#collapseMenu');
    let $clMenu = [].slice.call(document.querySelectorAll('.collapse'));
    let $linkCollapse = [].slice.call(document.querySelectorAll('.nav-link__collapse'));
    let $navLink = [].slice.call(document.querySelectorAll('.nav-link__top'));


    /* $linkCollapse.map(function (el) {
        el.addEventListener('mouseover', function (ev) {
            let $c = this.getAttribute('href');
            $clMenu.map(function (el) {
                if (el.hasAttributes('id') && el.classList.contains('show')) {
                    let $get_id = el.getAttribute('id')
                    if ($get_id !== $c)
                        el.classList.toggle('show');
                }
            })
            if (this.classList.contains('nav-link__collapse')) {
                document.querySelector($c).classList.toggle('show');
            }
        })
    }) */
    $linkCollapse.map(function (el) {
        el.addEventListener("click", function (ev) {
            ev.preventDefault();
            const $dataLink = this.getAttribute('data-link');
            window.location.replace($dataLink);
        });
    })
    $navLink.map(function (el) {
        el.addEventListener('mouseover', function (ev) {
            if (!this.classList.contains('nav-link__collapse')) {
                $clMenu.map(function (el) {
                    el.classList.remove('show');
                })
            }

            if (this.classList.contains('nav-link__collapse')) {
                let $c = this.getAttribute('href');
                $clMenu.map(function (el) {
                    if (el.hasAttributes('id') && el.classList.contains('show')) {
                        let $get_id = el.getAttribute('id')
                        if ($get_id !== $c)
                            el.classList.toggle('show');
                    }
                })
                if (this.classList.contains('nav-link__collapse')) {
                    document.querySelector($c).classList.toggle('show');
                }
            }
        })
        return false;
    })

    /* if ($linkCollapse) {
        $linkCollapse.addEventListener("mouseover", function () {
            let $c = this.getAttribute('href');
            let $elCollap = [].slice.call(document.querySelector($c));
            $elCollap.map(function (collapseEl) {
                //collapseEl.classList.toggle('show');
                return new bootstrap.Collapse(collapseEl)
            })
        })
    } */
    /* $(".navbar-nav a.nav-link__collapse").hover(function () {
         var colaps = $(this).attr("href");
         if (colaps && colaps !== "#") {
             $(colaps).collapse("show");
         }
     });*/
    /* const $navNav = document.querySelector(".navbar-nav a.nav-link__collapse");
    if ($navNav) {
        $navNav.addEventListener("click", function () {
            const $dataLink = this.getAttribute('data-link');
            window.location.replace($dataLink);
        });
    } */

    if ($clMenu) {
        $clMenu.map(function (collapseEl) {
            collapseEl.addEventListener('mouseleave', function () {
                setTimeout(() => {
                    this.classList.remove('show');
                }, 500);
            })
            return false;
        })
    }
    /*  $("#collapseMenu").on("mouseleave", function () {
          setTimeout(() => {
              $(this).collapse("hide");
          }, 500);
      });*/
    /* document.addEventListener('click', function (event) {
        let $d = event.target;
        if ($clMenu) {
            $clMenu.map(function (collapseEl) {
                if (!$d.closest('#collapseMenu') && collapseEl.classList.contains('show')) {
                    collapseEl.classList.toggle('show');
                    return false;
                }
            })
        }
    }, true); */
    /* document.addEventListener('mouseover', function (event) {
         let $d = event.target;
         let $navItem = $d.closest('.nav-item');
         if ($navItem) {
             if (!$navItem.children[0].classList.contains('nav-link__collapse')) $clMenu.classList.toggle('show');
         }
         return false;
     }, true);*/
    document.addEventListener('scroll', function (event) {
        event.preventDefault;
        var $scrollTop = document.scrollingElement.scrollTop;
        const $itemColapse = document.querySelector(".nav-item .collapse")
        if ($clMenu) {
            $clMenu.map(function (collapseEl) {
                if ($scrollTop >= $itemColapse.clientHeight && collapseEl.classList.contains('show')) {
                    //$("#collapseMenu").collapse("hide");
                    collapseEl.classList.remove('show');
                    return false;
                }
            })
        }
    });

    //scroll window
    let $btn = document.querySelector('#toTop');
    window.addEventListener('scroll', function () {
        if ($dcElement.scrollTop >= 500 && $btn.classList.contains('d-none')) {
            $btn.classList.toggle('d-none');
        }
        if ($dcElement.scrollTop < 500 && !$btn.classList.contains('d-none')) {
            $btn.classList.toggle('d-none');
        }
    })
    $btn.addEventListener('click', function () {
        $scrollTo(0, 400);
    });

    /*обвернуть таблицу*/
    let $elTable = [].slice.call(document.querySelectorAll('.table'));
    $elTable.forEach(elem => {
        let $tableEl = elem.outerHTML;
        elem.outerHTML = `<div class="table-responsive">${$tableEl}</div>`;
    })
    /*$elTable.map(function (tableEl) {
        let $tableEl = tableEl.innerHTML;
        tableEl.innerHTML = `<div class="table-responsive">${$tableEl}</div>`;
    })*/
})