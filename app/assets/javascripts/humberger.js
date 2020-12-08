document.addEventListener("turbolinks:load", function() {
  $(function(){
    $('.menu-btn').on('click', function(){
      $('.menu').toggleClass('is-active');
    });
  });
});