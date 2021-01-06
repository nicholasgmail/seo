var ready = (callback) => {
    if (document.readyState != "loading") callback();
    else document.addEventListener("DOMContentLoaded", callback);
}

ready(() => {
    const $sectionModal = document.querySelector(".section-modal");
    const $btnDataModal = document.querySelectorAll(".btn-data__modal");

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

        postData($url, $data)
            .then((data) => {
                var $setDataTarget = $dataTarget + $dataId;
                elem.setAttribute('data-target', $setDataTarget);
                var $modalHtml = '<div class="modal fade z-6 mt-20 mt-md-0" id="exampleModal' + $dataId + '" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">\n' +
                    '    <div class="modal-dialog modal-dialog-centered">\n' +
                    '        <div class="modal-content bg-transparent border-0">\n' +
                    '                <div class="modal-header justify-content-end pr-0">\n' +
                    '                    <button type="button" class="modal__close font-weight-montserrat-800 btn btn-light" data-dismiss="modal" aria-label="Close">\n' +
                    '                       <span aria-hidden="true">X</span>\n' +
                    '                   </button>\n' +
                    '                </div>\n' +
                    '            <div class="modal-body p-0">\n' + data[0]['content'] +
                    '            </div>\n' +
                    '        </div>\n' +
                    '    </div>\n' +
                    '</div>'
                $sectionModal.insertAdjacentHTML('afterbegin', $modalHtml);
                const js = document.querySelector('.modal script').innerText;
                eval(js);

                /* const $buttonCloseModal = document.querySelectorAll(".modal .modal__close");
                $buttonCloseModal.forEach(elem => {
                    elem.addEventListener('click', () => {
                        const $sectionModalModal = document.querySelectorAll(".section-modal .modal");
                        $sectionModalModal.forEach(elm => {
                            elm.remove();
                        })
                    })
                }) */
            });
    })
})