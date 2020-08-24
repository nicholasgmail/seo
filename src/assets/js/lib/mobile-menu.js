const $mobileMenu = function(){
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
    $(this).toggleClass('nav-mobile__link--plus nav-mobile__link--minus');
    //$('[data-behaviour="toggle-sub-menu"]').slideToggle('nav-mobile__sub-list--active');
    $(this).parent().slideToggle('nav-mobile__sub-list--active');
  };
  
  init()
});
}

export default $mobileMenu;