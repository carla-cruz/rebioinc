// function parallax(){
//   var scrolled = $(window).scrollTop();
//   $('.bg1').css('top', -(scrolled * 0.4) + 'px');
  

// }
// $(window).scroll(function(e){
//   parallax();
// });




$(document).ready(function(){
  $window = $(window);
  $('div[data-type="background"]').each(function(){
        var $bgobj = $(this); // assigning the object
        $(window).scroll(function() {
    // Scroll the background at var speed
    // the yPos is a negative value because we're scrolling it UP!
    var yPos = -($window.scrollTop() / $bgobj.data('speed'));
    // Put together our final background position
    var coords = '50% '+ yPos + 'px';
    // Move the background
    $bgobj.css({ backgroundPosition: coords });
        }); // window scroll Ends
      });

});