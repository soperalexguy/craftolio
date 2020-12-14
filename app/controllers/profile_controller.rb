class ProfileController < ApplicationController

  # Gets the profile from the :id parameter to be shown,
  # also gets the posts of that profile,
  # and creates a new hollow post and comment object in case you are visiting the page to post something
  def show
      @profile = Profile.find(params[:id])
      @posts = @profile.posts 
      @newpost = Post.new
      @newcomment = Comment.new
  end

  # Gets all profiles and all posts to be shown in the page
  def index
      @profiles = Profile.left_joins(:posts).group(:id)
  end

  # This function gets the profile thats going to be edited, so it can get the already existing field data
  # to place in the forms
  def edit
    @profile = Profile.find(params[:id])
  end

  # Gets the field data from the profile_params which get it from the form of the function above,
  # adds a blank user default image if no image is selected,
  # and it updates the attributes of the profile, redirecting to the profile if it is sucessful,
  # or rendering the page again
  def update
    if !user_signed_in?
      @profile = Profile.find_by(username: profile_params[:username])
    else
      @profile = Profile.find_by(username: current_user.username)
    end
    if !@profile.picture.attached?
      @profile.picture.attach(io: File.open("public/images/profile-pics/blank.png"), filename: 'blank.png', content_type: 'image/png')
    end
    if @profile.update_attributes(profile_params) 
      redirect_to '/profile/' + @profile.id.to_s
    else 
      render 'edit'
    end
  end

  # The function creates a new hollow profile object to be used to create a form for creating the whole object
  def new 
    @profile = Profile.new 
  end

  # Creates a new profile using the profile parameters which it gets from a form and
  # checks, if you are signed in to add the username and user_id of the user that is posting.
  # It also checks if you added a profile picture, if not, it attached a blank user default image.
  # If this is successful it send you to the profile you created,
  # or if it's not, it renders the page again
  def create 
    @profile = Profile.new(profile_params)
    if user_signed_in?
      @profile.username = current_user.username
      @profile.user_id = current_user.id
    end
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
      params.require(:profile).permit(:bio, :picture, :fname, :lname, :username, :user_id) 
    end

end