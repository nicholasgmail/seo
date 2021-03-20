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

let exampleModal = document.getElementById('exampleModal')
exampleModal.addEventListener('show.bs.modal', function (event) {
   document.addEventListener('click', function(e) {
      if (e.target.src) {
         let imgModal = document.querySelector('#exampleModal img');
         imgModal.src = e.target.src;
      }
   })
})