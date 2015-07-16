// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery-ui
//= require autocomplete-rails
//= require jquery-ui/autocomplete
//= require turbolinks
//= require bootstrap-sprockets
//= require bootstrap-datepicker
//= require lazybox
//= require_tree .

$(document).on('ready page:load', function () {
     $.lazybox.settings={ cancelClass: "pure-button", submitClass: 'pure-button pure-button-primary' }
     $.rails.allowAction = $.lazybox.confirm;
});



$(document).ready(function(){
 
   $('.datepicker').datepicker({
     format: "yyyy-mm-dd",
     viewMode: "years", 
     firstDay: 1,
     autoclose: true,
     language: 'es'
   });
   
});

$(function() {
   $('#flash').delay(400).fadeIn('normal', function() {
      $(this).delay(1200).fadeOut();
   });
});


$('.selectpicker').selectpicker({
      style: 'btn-info',
      size: 4
});

