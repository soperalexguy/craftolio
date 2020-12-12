class ProfileController < ApplicationController

  def show
      @profile = Profile.find(params[:id])
      @posts = @profile.posts 
  end

  def index
      @profiles = Profile.left_joins(:posts).group(:id)
  end

  def new 
    @profile = Profile.new 
  end

  def create 
    @profile = Profile.new(profile_params)
    @profile.username = current_user.username
    @profile.user_id = current_user.id
    if @profile.save 
      redirect_to '/profiles'
    else 
      render 'new'
    end
  end 

  private 
    def profile_params
      params.require(:profile).permit(:bio, :picture, :fname, :lname) 
    end

end