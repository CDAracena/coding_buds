// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function() {

  let mydiv = document.querySelector('.row .col-4');

  mydiv.addEventListener('click', function(e) {
    id = e.target.id;
    $('.media1').css('display', 'none');
    divs = document.querySelector(`.${id}`);
    if (divs != null) {

      $(`.${id}`).css('display', 'block');
    }
  })
});