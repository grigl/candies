ProductsHelper.module_eval do
  def variant_price_diff(variant)
    return product_price(variant) unless variant.product.master.price
    diff = product_price(variant, :format_as_currency => false) - product_price(variant.product, :format_as_currency => false)
    return nil if diff == 0
    if diff > 0
      "(+ #{format_price diff.abs})"
    else
      "(- #{format_price diff.abs})"
    end
  end

  def product_description(product)
    raw(product.description)
  end

  def large_sizes
    return @large_sizes if @large_sizes
    match = Image.attachment_definitions[:attachment][:styles][:large].match(/(\d+)x(\d+)/)
    @large_sizes = {:width => match[1], :height => match[2]}
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
