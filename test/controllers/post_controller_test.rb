require 'test_helper'

class PostControllerTest < ActionDispatch::IntegrationTest
    # setup for tests
    def setup
        @postfix = posts(:one)
    end

    # This test checks if a profile is destoyed when the destroy function of the profile controller is called on it
    test "should destroy profile" do
        assert_difference('Post.count', -1) do
          delete '/posts/' + @postfix.id.to_s
        end
        
        assert_redirected_to '/profiles'
    end

    # This test trying to reach the get_comments function of the profile controller
    test "should get comments" do
        get '/posts/' + @postfix.id.to_s + '/comments'
        assert_response :success
    end

    # test "create should succeed" do
    #     assert_difference('Post.count') do
    #         post1 = Post.new(title: @postfix.title, description: @postfix.description, profile_id: @postfix.profile.id)
    #         post1.picture.attach(io: File.open("public/images/post-pics/iraida2.jpg"), filename: 'iraida2.jpg', content_type: 'image/jpg')
    #         post '/posts', params: { post: { title: post1.title, description: post1.description, profile_id: post1.profile.id, picture: post1.picture } }
    #     end
      
    #     assert_redirected_to '/profile/' + post.profile.id.to_s
    # end

end