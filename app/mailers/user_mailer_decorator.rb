Spree::UserMailer.class_eval do
  helper 'spree/base'
  
  def info_account_retail(user)
    @user = user.respond_to?(:id) ? user : Spree::User.find(user)
    subject = "#{Spree::Store.current.name} #{t(:info_account_retail)} "
    mail(to: @user.email, from: from_address, subject: subject)
  end

  def confirm_account_retail(user)
    @user = user.respond_to?(:id) ? user : Spree::User.find(user)
    subject = "#{Spree::Store.current.name} #{t(:confirm_account_retail)} "
    mail(to: @user.email, from: from_address, subject: subject)
  end

end