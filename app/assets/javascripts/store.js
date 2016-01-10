
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

$(document).on("page:change", function() {
  $(".quantity").change(function() {
    var quantity = $(this).val();
    var price = parseFloat($(this).parent().next().text());
    var el_sum = $(this).parent().next().next();
    var el_totalsum = $("#cart-totalsum");
    var total_sum = parseFloat(el_totalsum.text()) - parseFloat(el_sum.text());

    if (quantity <= 0) {
      quantity = 1;
      $(this).val(quantity);
    }

    var sum = (price * quantity).toFixed(2);

    el_sum.text(sum);
    total_sum = (total_sum + parseFloat(sum)).toFixed(2);
    el_totalsum.text(total_sum);
    $.ajax({
           url: "/store/cart/update_quantity",
           type: "POST",
           data: {id: $(this).attr('id'), quantity: quantity, total_sum: total_sum}
    });
  });
});
