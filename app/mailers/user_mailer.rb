class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.contact_us.subject
  #
  def contact_us(text, email)
    @text = text
    @email = email

    mail to: "am02809@surrey.ac.uk", subject: "Craftolio Contact Us"
  end
end
