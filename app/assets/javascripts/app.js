function parallax(){
  var scrolled = $(window).scrollTop();
  $('.bg1').css('top', -(scrolled * 0.4) + 'px');
}
$(window).scroll(function(e){
  parallax();
});