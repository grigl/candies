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

    $('#registration_link').live('click', function(e){
      e.preventDefault();
      $('.accaunt_current').hide('slide', { direction: 'left'}, 1000);
      $('.accaunt_current').removeClass('accaunt_current');
      $('#registration').addClass('accaunt_current');
      $('#registration').show('slide', { direction: 'right'}, 1000 );
    });

    $('#login_link').live('click', function(e){
      e.preventDefault();
      $('.accaunt_current').hide('slide', { direction: 'left'}, 1000);
      $('.accaunt_current').removeClass('accaunt_current');
      $('#login').addClass('accaunt_current');
      $('#login').show('slide', { direction: 'right'}, 1000 );
    });

    $('#show_accaunt_edit').live('click', function(e){
      e.preventDefault();
      $('.accaunt_current').hide('slide', { direction: 'left'}, 1000);
      $('.accaunt_current').removeClass('accaunt_current');
      $('#accaunt_edit').addClass('accaunt_current');
      $('#accaunt_edit').show('slide', { direction: 'right'}, 1000 );
    });

    $('#show_accaunt').live('click', function(e){
      e.preventDefault();
      $('.accaunt_current').hide('slide', { direction: 'left'}, 1000);
      $('.accaunt_current').removeClass('accaunt_current');
      $('#accaunt').addClass('accaunt_current');
      $('#accaunt').show('slide', { direction: 'right'}, 1000 );
    });

    $('#show_address_book').live('click', function(e){
      e.preventDefault();
      $('.accaunt_current').hide('slide', { direction: 'left'}, 1000);
      $('.accaunt_current').removeClass('accaunt_current');
      $('#address_book').addClass('accaunt_current');
      $('#address_book').show('slide', { direction: 'right'}, 1000 );
    });

    $('#show_add_address').live('click', function(e){
      e.preventDefault();
      $('.accaunt_current').hide('slide', { direction: 'left'}, 1000);
      $('.accaunt_current').removeClass('accaunt_current');
      $('#add_address').addClass('accaunt_current');
      $('#add_address').show('slide', { direction: 'right'}, 1000 );
    });

  });
})(jQuery);
