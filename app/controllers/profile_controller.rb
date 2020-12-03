class ProfileController < ApplicationController

  def show
      @profile = Profile.find(params[:id])
      @posts = @profile.posts
  end

  def index
      @profiles = Profile.joins(:posts).group(:id)
  end

end