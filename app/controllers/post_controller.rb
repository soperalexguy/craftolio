class PostController < ApplicationController
    def getComments
        post = Post.find(params[:id])
        comments = post.comments
        render json: comments.as_json(:include => {:profile => {}})
    end
end
