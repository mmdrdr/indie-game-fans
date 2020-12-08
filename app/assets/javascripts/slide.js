// game showのスライドショー
document.addEventListener("turbolinks:load", function() {
  $(function() {
    $('#slider').slick({
      arrows: false,
      dots: true,
      autoplay: true,
      autoplaySpeed: 6000,
    });
  });
});