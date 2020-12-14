class PostController < ApplicationController

    # This function is used for an Ajax request, so i can show all the comments of a single post alongside the post in a lightbox
    def getComments
        post = Post.find(params[:id])
        comments = post.comments
        render json: comments.as_json(:include => {:profile => {}})
    end

    # Destroys the post and send you to the profile of the post that was deleted if you were signed in,
    # or to the profiles show page if you aren't
    def destroy
      @post = Post.find(params[:id])
      @post.destroy
      if user_signed_in?
        redirect_to "/profile/" + Profile.find_by(username: current_user.username).id.to_s
      else
        redirect_to "/profiles"
      end
    end

    # Creates a new post using the post parameters which it gets from a form and
    # checks, if you are signed in to add the profile_id of the user that is posting.
    # If this is successful it send you to the profile you are posting to,
    # or if it's not, it renders the page again
    def create
      @post = Post.new(post_params)
      if user_signed_in?
        @post.profile_id = Profile.find_by(user_id: current_user.id).id
      end
      if @post.save
        redirect_to '/profile/' + @post.profile_id.to_s
      else
        render 'new'
      end
    end
  
    private
      def post_params
        params.require(:post).permit(:title, :description, :picture, :profile_id)
      end
end
