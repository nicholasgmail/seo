
const $svgSprite = function(){
   $(document).ready(function(){
      var $gradient = '<linearGradient id="a" x1="0%" x2="95.106%" y1="30.902%" y2="0%"><stop offset="0%" stop-color="#EA0497"/><stop offset="0%" stop-color="#A606B1"/><stop offset="73%" stop-color="#800C97"/><stop offset="100%" stop-color="#5A117D"/></linearGradient>';

      var $cardSvgIcon = '<svg xmlns="http://www.w3.org/2000/svg" width="137" height="152"><defs>'+ $gradient +'</defs><path fill-rule="evenodd" fill="#FF3483" d="M136.998.138H1.912S-8.487 41.183 19.246 67.255c22.622 21.267 54.24 10.268 72.368 30.779 18.128 20.515 7.316 52.673 45.384 53.087V.138"/><path fill="url(#a)" d="M136.998.138H1.912S-8.487 41.183 19.246 67.255c22.622 21.267 54.24 10.268 72.368 30.779 18.128 20.515 7.316 52.673 45.384 53.087V.138"/></svg>'
      var $biArrowRightCircle = '<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-arrow-right-circle" fill="currentColor" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M8 15A7 7 0 1 0 8 1a7 7 0 0 0 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/><path fill-rule="evenodd" d="M7.646 11.354a.5.5 0 0 1 0-.708L10.293 8 7.646 5.354a.5.5 0 1 1 .708-.708l3 3a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0z"/><path fill-rule="evenodd" d="M4.5 8a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1H5a.5.5 0 0 1-.5-.5z"/></svg>'
     
      $('.card-svg__icon').html($cardSvgIcon);
      $('.bi-arrow-right-circle__icon').html($biArrowRightCircle);

    
   })
}

export default $svgSprite;
