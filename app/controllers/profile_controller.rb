class ProfileController < ApplicationController

  def show
      @profile = Profile.find(params[:id])
      @posts = @profile.posts 
      @newpost = Post.new
      @newcomment = Comment.new
  end

  def index
      @profiles = Profile.left_joins(:posts).group(:id)
  end

  
  def edit
    @profile = Profile.find_by(username: current_user.username)
  end

  def update
    @profile = Profile.find_by(username: current_user.username)
    @profile.username = current_user.username
    @profile.user_id = current_user.id
    if !@profile.picture.attached?
      @profile.picture.attach(io: File.open("public/images/profile-pics/blank.png"), filename: 'blank.png', content_type: 'image/png')
    end
    if @profile.update_attributes(profile_params) 
      redirect_to '/profile/' + @profile.id.to_s
    else 
      render 'edit'
    end
  end

  def new 
    @profile = Profile.new 
  end

  def create 
    @profile = Profile.new(profile_params)
    @profile.username = current_user.username
    @profile.user_id = current_user.id
    if !@profile.picture.attached?
      @profile.picture.attach(io: File.open("public/images/profile-pics/blank.png"), filename: 'blank.png', content_type: 'image/png')
    end
    if @profile.save 
      redirect_to '/profile/' + @profile.id.to_s
    else 
      render 'new'
    end
  end 

  private 
    def profile_params
      params.require(:profile).permit(:bio, :picture, :fname, :lname) 
    end

end