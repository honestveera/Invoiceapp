// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require dataTables/jquery.dataTables
//= require dataTables/bootstrap/2/jquery.dataTables.bootstrap
//= require dataTables/jquery.dataTables
 //= require jquery-ui
//= require turbolinks
//= require jquery.turbolinks
//= require_tree .
//= require_self
//= require bootstrap-sprockets
//= require jquery.validate
//= require jquery.validate.additional-methods
//= require owl.carousel
$(document).ready(function(){
  $("#owl-demo").owlCarousel({
    autoPlay: 3000, //Set AutoPlay to 3 seconds
    items : 4,
    itemsDesktop : [1199,3],
    itemsDesktopSmall : [979,3]

});
// $(".item").click(function() {
//   var src, title;
//   src = $(this).children("img").attr("src");
//   title = $(this).children("p").val();
//   $(".modal-body").html("").append('<img style="width:500px;height:350px" src=' + src + '>');
//   return $('#myModal').modal('show');
//   });
});
