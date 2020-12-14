require 'test_helper'

class CommentControllerTest < ActionDispatch::IntegrationTest
    # setup for tests
    def setup
        @comment = comments(:one)
    end

  # This test is checking if a new comment is created and if it redirects to the correct page
    test "create should succeed and redirect to /" do
        assert_difference('Comment.count') do
            post '/comments', params: { comment: { details: @comment.details, post_id: @comment.post.id, profile_id: @comment.profile.id } }
        end
      
        assert_response :redirect
        assert_redirected_to '/'
    end

  # This test is checking if creating a new profile fails
    test "create should fail and redirect to /profiles" do
        post '/comments', params: { comment: { post_id: @comment.post.id, profile_id: @comment.profile.id } }
      
        assert_response :redirect
        assert_redirected_to '/profiles'
    end
end
