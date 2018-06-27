// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.



console.log(' Document Loading');
$(document).ready(function() {

  $(document).ready(function() {
    $('.guest_three').css('display', 'none');
    $('.guest_three').slideToggle(1000, "swing");
    $('.guest_one').css('display', 'none');
    $('.guest_one').slideToggle(1000, "swing");
    $('.guest_two').css('display', 'none');
    $('.guest_two').slideToggle(1000, "swing");

  });

  if (document.querySelector('body.guests.index') == undefined) {
    console.log('body.guests.index');
    return;
  }
  console.log('Before Parent DIV');
  $('.delete-todo').on('ajax:success', function(e) {
    $(e.target).parents('.parent-tr').remove();
    console.log(' Parent DIV removed');
    toastr.success('Guest event has been deleted, successfully');

  });
});

$(document).ready(function() {
  if (document.querySelector('body.guests.new, body.guests.edit') == undefined) {
    return;
  }
});