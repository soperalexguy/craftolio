class ApplicationMailer < ActionMailer::Base
  # sets the from and to of the mailer
  default from: 'craftoliocontact@gmail.com', to: 'am02809@surrey.ac.uk'
  layout 'mailer'
end
