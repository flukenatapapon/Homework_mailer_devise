class WelcomeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.welcome_mailer.index.subject
  #
  def index(email, message, user_email)
    @message = message
    @email = email
    @user_email = user_email
    mail(:from => user_email, :to => @email, :subject => "Homework Devise / Mailer", :to => "natapapon.r@gmail.com")
  end

  

end
