
const $menuMobilejs = function () { 
  const navExpand = [].slice.call(document.querySelectorAll(".nav-expand"));
  const backLink = `<li class="nav-item">
	<a class="nav__link nav-back-link" href="javascript:;">
	   Предедущее
	</a>
</li>`;

  navExpand.forEach((item) => {
    item
      .querySelector(".nav-expand-content")
      .insertAdjacentHTML("afterbegin", backLink);
    item
      .querySelector(".nav__link")
      .addEventListener("click", () => item.classList.add("active"));
    item
      .querySelector(".nav-back-link")
      .addEventListener("click", () => item.classList.remove("active"));
  });

  // ---------------------------------------
  // not-so-important stuff starts here

  const ham = document.getElementById("humburger");
  ham.addEventListener("click", function () {
    document.body.classList.toggle("nav-is-toggled");
  });

}

export default $menuMobilejs;