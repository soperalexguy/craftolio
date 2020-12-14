class HomeController < ApplicationController
  skip_before_action :verify_authenticity_token

  def home
  end

  # In case we have arrived at the home page by sending an email from the contact us page, 
  # and as long as the email field was not blank, it takes the parameters of the form,
  # sending them to the user mailers contact_us function to be dealt with. If this is successful
  # we get redirected to the home page, else we get an error message through an alert
  def request_contact
    if !params[:email].blank?
      UserMailer.contact_us(params[:text], params[:email])
      redirect_to '/'
      flash[:notice] = 'Email Sent!'
    else
      flash[:alert] = 'Email from which the message was to be sent, was not found.'
    end
  end

end
