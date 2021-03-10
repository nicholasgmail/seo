<div class="modal fade" id="exampleModal{$id_form}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
        <div class="modal-content">
            <div class="modal-body">
                {$id_form | resource: 'content' | html}
            </div>
        </div>
    </div>
</div>