class CommentController < ApplicationController
  skip_before_action :verify_authenticity_token
  def create
    @comment = Comment.new(comment_params)
    @comment.profile_id = Profile.find_by(user_id: current_user.id).id
    if @comment.save
      redirect_to '/', :notice => "Comment posted."
    else
      flash[:alert] ="Problem occured while commenting."
      redirect_to '/profile/' + Profile.where(post_id: comment_params[:post_id]).id.to_s
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:details, :post_id)
    end
end
