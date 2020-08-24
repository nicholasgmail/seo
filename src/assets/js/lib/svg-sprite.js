
const $svgSprite = function(){
   $(document).ready(function(){
      var $gradient = '<linearGradient id="a" x1="0%" x2="95.106%" y1="30.902%" y2="0%"><stop offset="0%" stop-color="#EA0497"/><stop offset="0%" stop-color="#A606B1"/><stop offset="73%" stop-color="#800C97"/><stop offset="100%" stop-color="#5A117D"/></linearGradient>';

      var $cardSvgIcon = '<svg xmlns="http://www.w3.org/2000/svg" width="137" height="152"><defs>'+ $gradient +'</defs><path fill-rule="evenodd" fill="#FF3483" d="M136.998.138H1.912S-8.487 41.183 19.246 67.255c22.622 21.267 54.24 10.268 72.368 30.779 18.128 20.515 7.316 52.673 45.384 53.087V.138"/><path fill="url(#a)" d="M136.998.138H1.912S-8.487 41.183 19.246 67.255c22.622 21.267 54.24 10.268 72.368 30.779 18.128 20.515 7.316 52.673 45.384 53.087V.138"/></svg>'
     
      $('.card-svg__icon').html($cardSvgIcon);

    
   })
}

export default $svgSprite;
