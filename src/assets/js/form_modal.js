var ready = (callback) => {
    if (document.readyState != "loading") callback();
    else document.addEventListener("DOMContentLoaded", callback);
}

ready(() => {
    const $sectionModal = document.querySelector(".section-modal");
    const $btnDataModal = document.querySelectorAll(".btn-data__modal");
    const $modalBackdrop = document.querySelector(".bg-modal");

    $btnDataModal.forEach(elem => {
        const $dataId = elem.getAttribute('data-id');
        const $dataTarget = elem.getAttribute('data-target');
        const $url = 'https://savin-piar.ru/connectors/formconnector.php?id=' + $dataId;
        const $data = null;

        async function postData(url = '', data = {}) {
            try {
                const response = await fetch(url, {
                    method: 'POST', // или 'PUT'
                    body: JSON.stringify(data), // данные могут быть 'строкой' или {объектом}!
                    headers: {
                        'Content-Type': 'application/json; charset=utf-8'
                    }
                });
                const $respons = await response.json();
                return $respons;
            } catch (err) {
                console.log('modal' + err);
            }
        }
        elem.addEventListener('click', (elem) => {
            postData($url, $data)
                .then((data) => {
                    //var $setDataTarget = $dataTarget + $dataId;
                    // elem.setAttribute('data-target', $setDataTarget);
                    var $modalHtml = `<div class="modal fade show z-6 mt-20 mt-md-0" data-bs-backdrop="static" data-bs-keyboard="false"  style="display:block;" id="exampleModal' ${$dataId} '" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                         <div class="modal-dialog modal-dialog-centered" >
                               <div class="modal-content bg-transparent border-0">
                                       <div class="modal-header justify-content-end pr-0">
                                           <button type="button" class="modal__close font-weight-montserrat-800 btn btn-light">
                                              <span class="modal__close" aria-hidden="true">X</span>
                                          </button>
                                       </div>
                                   <div class="modal-body p-0">${data[0]['content']}
                                   </div>
                               </div>
                           </div>
                        </div>`
                    $sectionModal.insertAdjacentHTML('afterbegin', $modalHtml);
                    const js = document.querySelector('.modal script').innerText;
                    eval(js);
                    $modalBackdrop.classList.toggle('show');
                    $modalBackdrop.classList.toggle('modal-backdrop');
                });
        })
    })

    $sectionModal.addEventListener('click', (ev) => {
        let $elem = ev.target;
        if ($elem.classList.contains('modal__close')) {
            const $windowModal = document.querySelectorAll('.section-modal .modal');
            $windowModal.forEach(elm => {
                elm.remove();
            })
            $modalBackdrop.classList.toggle('show');
            $modalBackdrop.classList.toggle('modal-backdrop');            
        }
    })
})