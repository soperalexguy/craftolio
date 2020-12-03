class HomeController < ApplicationController
  def home
    @posts = Post.all
    UserMailer.contact_us(params[:text], params[:email])
  end
end
