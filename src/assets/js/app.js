

function f() {
    return console.log('hello')
}
f;
$(document).ready(function () {

    // hover for the dropdown
    $("ul li.dropdown").hover(
        function () {
            $(this).find(".dropdown-menu").addClass("show");
        },
        function () {
            $(this).find(".dropdown-menu").removeClass("show");
        }
    );
});