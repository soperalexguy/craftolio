class PostController < ApplicationController
    def getComments
        post = Post.find(params[:id])
        comments = post.comments
        render json: comments.as_json(:include => {:profile => {}})
    end

    def destroy
      @post = Post.find(params[:id])
      @post.destroy
      redirect_to "/profile/" + Profile.find_by(username: current_user.username).id.to_s
    end

    def create
        @post = Post.new(post_params)
        @post.profile_id = Profile.find_by(user_id: current_user.id).id
        if @post.save
          redirect_to '/profile/' + Profile.find_by(user_id: current_user.id).id.to_s
        else
          render 'new'
        end
      end
  
      private
      def post_params
        params.require(:post).permit(:title, :description, :picture)
      end
end
