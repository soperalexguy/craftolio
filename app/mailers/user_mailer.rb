class UserMailer < ApplicationMailer

  # Gets the text and email from a function in the home controller
  # and uses them to create global variables to be used in the email.
  #It also sets the subject of the email.
  def contact_us(text, email)
    @text = text
    @email = email

    mail subject: "Craftolio Contact Us"
  end
end
