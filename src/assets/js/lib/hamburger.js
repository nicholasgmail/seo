const $hamburger = function () {
  const $navbar = document.querySelector("#humburger");
  $navbar.addEventListener("click", function () {  
      this.classList.toggle("is-active");
  })
  /*   $(".navbar").on("click", "#humburger", function (e) {      
      e.preventDefault;
      $(this).toggleClass("is-active");
    });  */
};

export default $hamburger;
