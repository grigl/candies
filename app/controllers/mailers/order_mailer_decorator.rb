OrderMailer.class_eval do
  helper "spree/base"

  def confirm_email(order, resend=false)
    @order = order
    subject = (resend ? "[RESEND] " : "")
    subject += "#{Spree::Config[:site_name]} #{t('subject', :scope =>'order_mailer.confirm_email')} ##{order.number}"
    mail(:to => order.email,
         :subject => subject
         ) do |format|
         format.html
         end
  end

  def cancel_email(order, resend=false)
    @order = order
    subject = (resend ? "[RESEND] " : "")
    subject += "#{Spree::Config[:site_name]} #{t('subject', :scope => 'order_mailer.cancel_email')} ##{order.number}"
    mail(:to => order.email,
         :subject => subject
         ) do |format|
         format.html
         end
  end
end