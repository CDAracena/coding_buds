// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function() {
  if (document.querySelector('body.home.index') == undefined) {
    return;
  }

  let mydiv = document.querySelector('.row .col-4');

  mydiv.addEventListener('click', function(e) {
    id = e.target.id;
    $('.media1').css('display', 'none');
    divs = document.querySelector(`.${id}`);
    if (divs != null) {

      $(`.${id}`).css('display', 'block');
    }
  });
console.log('your-code');
  let code = document.querySelectorAll('.your-code');
  console.log(code);
  let result = document.querySelectorAll('.your-result');
  let styles = document.querySelectorAll('.your-styles');
  let myStyles = document.querySelectorAll('#my-styles');
  let array = [code, result, styles, myStyles]
for (let i=0; i < array.length; i++)


  addEventListener('keyup', function(){
    result.innerHTML = code.value
  });

  styles.addEventListener('keyup', function(){
    myStyles.innerText = styles.value
  });
});
