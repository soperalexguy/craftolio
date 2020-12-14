require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
    # setup for tests
    test "home should succeed" do
        get '/'
        assert_response :success
        assert_template layout: 'application'
    end

    # This test is checking if you can send an email without entering an email in the form.
    test "should not let you post request contact with no email" do
        post request_contact_url
        assert_response :success

        assert_not_empty flash[:alert]
        assert_nil flash[:notice]
    end

    # This test checks if an email can be sent when the correct params are entered
    test "should post request contact" do
        post request_contact_url, params:{email: "soperalex@me.com", text: "Hello"}
        assert_response :redirect
        
        assert_nil flash[:alert]
        assert_not_empty flash[:notice]
    end
end
