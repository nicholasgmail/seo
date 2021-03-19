
const $splWebProm = document.getElementById('website-promotion-splide');
const $splDevCases = document.getElementById('development-cases-splide');

if ($splWebProm) {
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
}
if ($splDevCases) {
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
}

