(function($){
  $(document).ready(function(){

    // Remove an item from the cart by setting its quantity to zero and posting the update form
    $('form#updatecart a.delete').show().live('click', function(e){
      $(this).parents('div').find('input.line_item_quantity').val(0);
      $(this).parents('form').submit();
      e.preventDefault();
    });

    // cart amount change
    $('.line_item_quantity').live('change', function(){
      $('form#updatecart').submit();
    })

  });
})(jQuery);
