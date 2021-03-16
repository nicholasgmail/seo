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
