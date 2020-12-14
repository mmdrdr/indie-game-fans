document.addEventListener("turbolinks:load", function() {
  $("#about-btn").click(function(){
      var position = $("#about").offset().top;
      $("html,body").animate({
        scrollTop : position
      });
  });
});