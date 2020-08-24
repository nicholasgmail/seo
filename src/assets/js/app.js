import $svgSprite from "./lib/svg-sprite";

$svgSprite();

$(function() {
  function init() {
    $('[data-behaviour="toggle-menu-icon"]').on('click', toggleMenuIcon);
    $('[data-behaviour="toggle-link-icon"]').on('click', toggleSubMenu);
  };
  
  function toggleMenuIcon() {
    $(this).toggleClass('menu-icon--open');
    $('[data-element="toggle-nav"]').toggleClass('nav-mobile--active');
  };
  
  function toggleSubMenu() {
    $(this).toggleClass('nav__link--plus', 'nav__link--minus');
    $(this).parent().children( ".nav-mobile__sub-list" ).slideToggle('nav__sub-list--active');
  };
  
  init()
});
/* $(document).ready(function () {

    // hover for the dropdown
    $("ul li.dropdown").hover(
        function () {
            $(this).find(".dropdown-menu").addClass("show");
        },
        function () {
            $(this).find(".dropdown-menu").removeClass("show");
        }
    );
}); */

$(document).ready(function () {
  $(".navbar-nav a.nav-link").hover(function () {  
    var colaps = $(this).attr("href"); 
    if(colaps && colaps !== '#'){
      $(colaps).collapse('show');
      return false;
    }
    return;
  });
});
