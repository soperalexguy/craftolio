require 'test_helper'

class ProfileControllerTest < ActionDispatch::IntegrationTest
  # setup for tests
  def setup
    @profile = profiles(:one)
  end

  # This test is trying to reach the index function of the profiles controller
  test "index action should succeed" do
      get '/profiles'
      assert_response :success
      assert_template layout: 'application'
  end

  # This test is trying to reach the new function of the profiles controller
  test "new action should succeed" do
      get '/profiles/new'
      assert_response :success
      assert_template layout: 'application'
  end

  # This test is trying to reach the show function of the profiles controller
  test "show should succeed" do
      get '/profile/' + profiles(:one).id.to_s
      assert_response :success
      assert_template layout: 'application'
  end

  # This test is checking if a new profile is created and if it redirects to the correct page
  test "create should succeed" do
    assert_difference('Profile.count') do
        post '/profiles', params: { profile: { fname: @profile.fname, lname: @profile.lname, username: @profile.username, bio: @profile.bio, user_id: @profile.user.id } }
    end
  
    assert_redirected_to '/profile/' + Profile.last.id.to_s
  end

  # This test is checking if creating a new profile fails
  test "create should fail" do
    assert_difference('Profile.count', 0) do
        post '/profiles', params: { profile: { lname: @profile.lname, username: @profile.username, bio: @profile.bio, user_id: @profile.user.id } }
    end
  end

  # This test is trying to reach the edit function of the profiles controller
  test "should get edit" do
    get '/profile/' + @profile.id.to_s + "/edit"
    assert_response :success
  end

  # This test is trying to reach the update function of the profiles controller
  test "should update profile" do
    patch profiles_path(@profile), params: { profile: { fname: @profile.fname, lname: @profile.lname, username: @profile.username, bio: @profile.bio, user_id: @profile.user.id } }
    assert_redirected_to '/profile/' + @profile.id.to_s
  end

#   The profile table does not have a way to be destroyed simply because 
#   I didn't want it to. If it did, this would be what was testing the controller
#   function:
#   
#   test "should destroy profile" do
#     assert_difference('Profile.count', -1) do
#       delete 'profile/' + @profile.id.to_s
#     end

#     assert_redirected_to profiles_url
#   end
end
