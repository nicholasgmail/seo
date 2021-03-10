
const $imgAddClass = function () {  
      const $imgAll = document.querySelectorAll('.section-content img');
      $imgAll.forEach(element => {
            if (!element.classList.contains('img-fluid')) element.classList.add('img-fluid', 'mx-auto', 'd-block');
      })   
}

export default $imgAddClass;