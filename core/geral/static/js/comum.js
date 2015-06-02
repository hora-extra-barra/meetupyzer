/*=========== Confirm dialog excluded ==========================*/
var excluded_url;

$('#delete-dialog').on('show.bs.modal', function(event) {
    var button = $(event.relatedTarget); // Button that triggered the modal
    excluded_url = button.data('url'); // Extract info from data-* attributes
});

$('#delete-dialog').find('.modal-footer > button.confirm-dialog').on('click', function(e) {
    $(location).attr('href',excluded_url);
});