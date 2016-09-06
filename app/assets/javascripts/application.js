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
//= require jquery.turbolinks
//= require jquery_ujs
//= require ckeditor/init
//= require ckeditor/plugins/notification/plugin
//= require ckeditor/plugins/wordcount/plugin
//= require ckeditor/config
//= require bootstrap-sprockets

//= require_tree .


// init Isotope
$(window).load(function(){
  var $grid = $('.grid').isotope({
    itemSelector: '.grid-item',
    layoutMode: 'masonry'
  });

  $("[data-toggle='tooltip']").tooltip();
  $("[data-toggle='popover']").popover({trigger: "click"});

  $("#geocomplete").geocomplete({
  	types: ['(cities)']
  });
});

