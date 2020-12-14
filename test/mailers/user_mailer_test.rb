require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  
  #This test creates a new UserMailer and checks if the 'from', 'to', and 'subject' are correct and also checks if the email can be sent
  test "should return user mailer" do
    mail = UserMailer.contact_us("Hello there bro.", "alex.mitsoo@gmail.com")

    assert_equal ['craftoliocontact@gmail.com'], mail.from
    assert_equal ['am02809@surrey.ac.uk'], mail.to
    assert_equal "Craftolio Contact Us", mail.subject
    assert_emails 1 do
      mail.deliver_now
    end
  end
end
