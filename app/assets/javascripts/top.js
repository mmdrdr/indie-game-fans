$(function() {
  let position = $("#about").offset().top;
  $("#about-btn").click(function(){
      $("html,body").animate({
        scrollTop : position
      });
  });
});