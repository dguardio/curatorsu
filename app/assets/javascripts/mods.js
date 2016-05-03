$(function() {
  $('a#show_whatever').click(function(event){
    event.preventDefault();
    $('div#whatever').toggle();
  });
});