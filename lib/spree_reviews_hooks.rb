class SpreeReviewsHooks < Spree::ThemeSupport::HookListener

  insert_after :inside_head do
    %(<%= stylesheet_link_tag('reviews.css') %>)
  end

  insert_after :footer_right do
    %(
    <%= javascript_include_tag("jquery.rating.js") %>
    <%= javascript_tag("$(document).ready(function(){$('.stars').rating({required:true});});") %>
    )
  end

  insert_after :admin_product_sub_tabs do
    %(
       <%= tab(:reviews, :label => 'review_management') %>
     )
  end

end
