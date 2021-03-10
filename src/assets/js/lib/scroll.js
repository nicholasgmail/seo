
const $scroll = function () {
   const $container = document.querySelector(".slug-card")
   if ($container) {
      const $prevBtn = $container.querySelector(".btn-scroll__left");
      const $row = $container.querySelector(".row");
      const $nextBtn = $container.querySelector(".btn-scroll__right");
      const itemWidth = $container.querySelector('.item').clientWidth;
      $nextBtn.addEventListener('click', scrollToNextItem);
      $prevBtn.addEventListener('click', scrollToPrevItem);

      function scrollToNextItem() {
         if ($row.scrollLeft < ($row.scrollWidth - itemWidth)) {
            // Позиция прокрутки не в начале последнего элемента 
            $row.scrollBy({ left: itemWidth, top: 0, behavior: 'smooth' });
         } else {
            // Достигнут последний элемент 
            // Вернёмся к первому элементу, установив положение прокрутки на 0 
            $row.scrollTo({ left: 0, top: 0, behavior: 'smooth' });
         }
      }

      function scrollToPrevItem() {
         if ($row.scrollLeft != 0) {
            // Позиция прокрутки не в начале первого элемента 
            $row.scrollBy({ left: -itemWidth, top: 0, behavior: 'smooth' });
         } else {
            // Это первый элемент (отзыв) 
            // Перейдём к последнему элементу, установив положение прокрутки на ширину «.scroller» 
            $row.scrollTo({ left: $row.scrollWidth, top: 0, behavior: 'smooth' });
         }
      }
   }
}

export default $scroll;