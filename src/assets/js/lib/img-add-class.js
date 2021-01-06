var ready = (callback) => {
   if (document.readyState != "loading") callback();
   else document.addEventListener("DOMContentLoaded", callback);
}
const $imgAddClass = function () {
   ready(() => {
      const $imgAll = document.querySelectorAll('img');
      console.log('hello');
      $imgAll.forEach(element => {
         if (!element.classList.contains('img-fluid')) element.classList.add('img-fluid', 'mx-auto', 'd-block');
      })
   })
}

export default $imgAddClass;