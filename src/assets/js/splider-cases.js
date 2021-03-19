new Splide('#website-promotion-splide', {
   type: 'loop',
   lazyLoad: true,
   autoplay: false,
   pagination: false,
   width: '100%',
   perPage: 1,
   breakpoints: {
      576: {
         perPage: 1,
         gap: 8,
         padding: {
            left: '2rem',
            right: '2rem',
         }
      },
   }
}).mount();
new Splide('#development-cases-splide', {
   type: 'loop',
   lazyLoad: true,
   autoplay: false,
   pagination: false,
   width: '100%',
   perPage: 1,
   breakpoints: {
      576: {
         perPage: 1,
         gap: 8,
         padding: {
            left: '2rem',
            right: '2rem',
         }
      },
   }
}).mount();

function addStyleArrow() {
   let arrow_prev = document.querySelectorAll('.splide__arrow--prev');
   let arrow_next = document.querySelectorAll('.splide__arrow--next');

   arrow_prev.forEach(function(item) {
      item.style.left = '-0.3em';
   });
   arrow_next.forEach(function(item) {
      item.style.right = '-0.3em';
   });
}
addStyleArrow();
