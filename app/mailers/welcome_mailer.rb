class WelcomeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.welcome_mailer.index.subject
  #
  def index(email, message)
    @message = message
    @email = email
    mail(:from => @email, :to => @email, :subject => "Homework Devise / Mailer", :to => "natapapon.r@gmail.com")
  end

  

end
