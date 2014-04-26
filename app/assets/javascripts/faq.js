$(document).ready(function(){
  $('div.answer').hide();
  $('.inner-faq-container h4').on('click', function(e){
    e.preventDefault();
    $(this).next('div.answer').slideToggle();
  });

  $('.inner-faq-container h4 a.toggling').on('click', function(e){
     e.preventDefault();
    $(this).toggleClass('italisized');
  });

  $('.inner-faq-container a.shut').on('click', function(e){
    e.preventDefault();
    $(this).parents('div.answer').slideToggle();
    $(this).parents().parents().parents().first().find('a.toggling').toggleClass('italisized');
  });

  $('.inner-faq-container a.list1').on('click', function(e){
    e.preventDefault();
    $(this).parents('div.answer').slideToggle();
    $(this).parents().find('#list1').toggleClass('italisized');
  });

  $('.inner-faq-container a.list2').on('click', function(e){
    e.preventDefault();
    $(this).parents('div.answer').slideToggle();
    $(this).parents().find('#list2').toggleClass('italisized');
  });
});