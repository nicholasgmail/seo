const $hamburger = function () {

  $(document).ready(function () {
     $(".navbar").on("click", "#humburger", function (e) {      
       e.preventDefault;
       $(this).toggleClass("is-active");
     });
  });
};

export default $hamburger;
