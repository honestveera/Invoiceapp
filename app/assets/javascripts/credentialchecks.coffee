# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $('#owl-demo').owlCarousel
    autoPlay: 3000
    items: 4
    itemsDesktop: [1199,3]
    itemsDesktopSmall: [979,3]
  $(".item").click ->
      src = $(this).children("img").attr "src";
      title=$(this).children("p").text();
      $(".modal-title").css("color","blue").text(title);
      $(".modal-body").html("").append('<img  src='+src+'>');
      $('#myModal').modal('show');
  $('[data-toggle="tooltip"]').tooltip();
