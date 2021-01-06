var ready = (callback) => {
    if (document.readyState != "loading") callback();
    else document.addEventListener("DOMContentLoaded", callback);
}

ready(() => {
    const $sectionModal = document.querySelector(".section-modal");
    const $linkDataModal = document.querySelectorAll(".video-modal");
    const $buttonCloseModal = document.querySelectorAll(".section-modal .close");

    $linkDataModal.forEach(elem => {
        elem.addEventListener("click", (e) => {
            e.preventDefault();
            const $dataVideoWhidth = elem.getAttribute('data-video-width');
            const $dataVideoHeight = elem.getAttribute('data-video-height');
            const $dataUrlHref = elem.getAttribute('href');

            var $modalHtml = '<div class="modal fade z-6" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">\n' +
                '    <div class="modal-dialog modal-dialog-centered modal-lg">\n' +
                '        <div class="modal-content">\n' +
                '                <div class="modal-header">\n' +
                '                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">\n' +
                '                       <span aria-hidden="true">&times;</span>\n' +
                '                   </button>\n' +
                '                </div>\n' +
                '<iframe width="' + $dataVideoWhidth + '" height="' + $dataVideoHeight + '" src="' + $dataUrlHref + '" frameborder="0"\n' +
                'allow = "accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"\n' +
                'allowfullscreen ></iframe >\n' +
                '        </div>\n' +
                '    </div>\n' +
                '</div>'
            $sectionModal.insertAdjacentHTML('afterbegin', $modalHtml);
        })
    })
    $buttonCloseModal.forEach(elem => {
        elem.addEventListener('click', () => {
            const $sectionModalModal = document.querySelectorAll(".section-modal .modal");
            $sectionModalModal.forEach(elm => {
                elm.remove();
            })
        })
    })
})