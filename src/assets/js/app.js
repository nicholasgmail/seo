import $svgSprite from "./lib/svg-sprite";
import $hamburger from "./lib/hamburger";
import $menuMobilejs from "./lib/mobile-menu";
import $imgAddClass from "./lib/img-add-class";

$menuMobilejs();
$svgSprite();
$hamburger();
$imgAddClass();

$(document).ready(function () {
    $(".navbar-nav a.nav-link__collapse").hover(function () {
        var colaps = $(this).attr("href");
        if (colaps && colaps !== "#") {
            $(colaps).collapse("show");
        }
    });
    document.querySelector(".navbar-nav a.nav-link__collapse").addEventListener("click", function () {
        const $dataLink = this.getAttribute('data-link');
        window.location.replace($dataLink);
    });
    $("#collapseMenu").on("mouseleave", function () {
        setTimeout(() => {
            $(this).collapse("hide");
        }, 500);
    });
    document.addEventListener('click', function (event) {
        let $d = event.target;
        if (!$d.closest('#collapseMenu')) {
            $("#collapseMenu").collapse("hide");
            return false;
        }
    }, true);
    document.addEventListener('mouseover', function (event) {
        let $d = event.target;
        let $navItem = $d.closest('.nav-item');
        if ($navItem) {
            if (!$navItem.children[0].classList.contains('nav-link__collapse')) $("#collapseMenu").collapse("hide");
        }
        return false;
    }, true);
    document.addEventListener('scroll', function (event) {
        event.preventDefault;
        var $scrollTop = document.scrollingElement.scrollTop;
        const $itemColapse = document.querySelector(".nav-item .collapse")
        if ($scrollTop >= $itemColapse.clientHeight) {
            $("#collapseMenu").collapse("hide");
            return false;
        }
    });
});


var galleryThumbs = new Swiper('.gallery-thumbs', {
    spaceBetween: 10,
    slidesPerView: 4,
    loop: true,
    freeMode: true,
    loopedSlides: 5, //looped slides should be the same
    watchSlidesVisibility: true,
    watchSlidesProgress: true,
    navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
    },
    thumbs: {
        swiper: galleryTop,
    },
});
var galleryTop = new Swiper('.gallery-top', {
    spaceBetween: 10,
    loop: true,
    loopedSlides: 1, //looped slides should be the same
    thumbs: {
        swiper: galleryThumbs,
    },
});