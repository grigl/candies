Spree::BaseHelper.module_eval do
  def link_to_cart(text = t('cart'))
    css_class = nil
    if current_order.nil? or current_order.line_items.empty?
      text = "#{text}"
      css_class = 'empty'
    else
      text = "#{text} (#{current_order.item_count})"
      css_class = 'full'
    end
    link_to text, cart_path, :class => css_class
  end
  
  # Outputs the corresponding flash message if any are set
  def flash_messages
    %w(notice warning error).map do |msg|
      content_tag(:script,
          "$.jGrowl(\"#{flash.delete(msg.to_sym)}\", { header: '#{t(msg, :default => msg).mb_chars.titleize}', sticky: true, theme: '#{msg}' });".html_safe
      ) unless flash[msg.to_sym].blank?
    end.join("\n").html_safe
  end

  def order_price(order, options={})
    options.assert_valid_keys(:format_as_currency, :show_vat_text, :show_price_inc_vat)
    options.reverse_merge! :format_as_currency => true, :show_vat_text => true

    # overwrite show_vat_text if show_price_inc_vat is false
    options[:show_vat_text] = Spree::Config[:show_price_inc_vat]

    amount =  order.item_total
    amount += Calculator::Vat.calculate_tax(order) if Spree::Config[:show_price_inc_vat]

    options.delete(:format_as_currency) ? raw(number_to_currency(amount, :format => "%n <em>%u</em>")) : amount
  end

  def format_price(price, options={})
    options.assert_valid_keys(:show_vat_text, :with_em)
    options.reverse_merge! :show_vat_text => Spree::Config[:show_price_inc_vat]
    if options[:with_em]
      formatted_price = raw(number_to_currency(price, :format => "%n <em>%u</em>"))
    else
      formatted_price = number_to_currency(price)
    end
    if options[:show_vat_text]
      I18n.t(:price_with_vat_included, :price => formatted_price)
    else
      formatted_price
    end
  end

  def retrieve_collections
    @collections = Taxonomy.find(1).root.children
  end

  def retrieve_brands
    @brands = ProductGroup.order(:name)
  end

  def product_price(product_or_variant, options={})
    options.assert_valid_keys(:format_as_currency, :show_vat_text, :with_em)
    options.reverse_merge! :format_as_currency => true, :show_vat_text => Spree::Config[:show_price_inc_vat]

    amount = product_or_variant.price
    amount += Calculator::Vat.calculate_tax_on(product_or_variant) if Spree::Config[:show_price_inc_vat]
    if options[:with_em] 
      options.delete(:format_as_currency) ? format_price(amount, options.merge(with_em: true)) : amount
    else
      options.delete(:format_as_currency) ? format_price(amount, options) : amount
    end
  end
end
