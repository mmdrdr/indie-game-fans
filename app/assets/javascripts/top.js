document.addEventListener("turbolinks:load", function() {
  $("#about-btn").click(function(){
      let position = $("#about").offset().top;
      $("html,body").animate({
        scrollTop : position
      });
  });
});