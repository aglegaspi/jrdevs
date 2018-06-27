// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.



console.log(' Document Loading');
$(document).ready(function() {

  $(1).fadeIn();
  $(2).fadeIn("slow");
  $(3).fadeIn(3000);

  if (document.querySelector('body.guests.index') == undefined) {
    console.log('body.guests.index');
    return;
  }
  console.log('Before Parent DIV');
  $('.delete-todo').on('ajax:success', function(e) {
    $(e.target).parents('.parent-tr').remove();
    console.log(' Parent DIV removed');
    toastr.success('Your todo has been successfully deleted');

  });
});

$(document).ready(function() {
  if (document.querySelector('body.guests.new, body.guests.edit') == undefined) {
    return;
  }
});