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
//= require turbolinks
//= require_tree .

$(document).on("page:change", function () {
    $('#horizontalTab').easyResponsiveTabs({
        type: 'default', //Types: default, vertical, accordion           
        width: 'auto', //auto or any width like 600px
        fit: true   // 100% fit in a container
    });
});

jQuery(document).on("page:change", function(){
  $('#etalage').etalage({
    thumb_image_width: 300,
    thumb_image_height: 400,
    source_image_width: 900,
    source_image_height: 1200,
    show_hint: true,
    click_callback: function(image_anchor, instance_id){
      alert('Callback example:\nYou clicked on an image with the anchor: "'+image_anchor+'"\n(in Etalage instance: "'+instance_id+'")');
    }
  });

});

  // $(document).on("page:change", function() {
  //   $().UItoTop({ easingType: 'easeOutQuart' });
    
  // });