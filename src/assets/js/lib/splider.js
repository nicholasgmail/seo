
const $splide = function () {

   new Splide('#splide-header', {
      type: 'loop',
      autoplay: true,
      width: '100%',
      height: '41.8rem',
      perPage: 1,      
   }).mount();
}

export default $splide;