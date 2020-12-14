class CommentController < ApplicationController
  skip_before_action :verify_authenticity_token

  # using the comment_params which we get from a form to create a new comment, 
  # switching its profile_id to the user who is currently signed in (and posting the comment).
  # after that, if the comment is valid, it saves and we are redirected to the home page
  # if not, we get redirected to profiles index
  def create
    @comment = Comment.new(comment_params)
    if user_signed_in?
      @comment.profile_id = Profile.find_by(user_id: current_user.id).id
    end
    if @comment.save
      redirect_to '/', :notice => "Comment posted."
    else
      flash[:alert] ="Problem occured while commenting."
      redirect_to '/profiles'
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:details, :post_id, :profile_id)
    end
end
