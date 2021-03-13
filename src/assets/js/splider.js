
new Splide('#splide-header', {
   type: 'loop',
   autoplay: true,
   width: '100%',
   height: '41.8rem',
   perPage: 1,
}).mount();

new Splide('#splide-cases', {
   type: 'loop',
   lazyLoad: true,
   autoplay: true,
   width: '100%',
   perPage: 2,
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
new Splide('#splide-videos', {
   type: 'loop',
   lazyLoad: true,
   autoplay: false,
   width: '100%',
   perPage: 3,
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
