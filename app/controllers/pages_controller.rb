# The pages controller contains all of the code for any page inside of /pages
class PagesController < ApplicationController
  
  # Backend code for pages/index
  def index
  end

  # Backend code for pages/home
  def home
  end

  # Backend code for pages/profile
  def profile
    # Grab username from url :id
    if (User.find_by_username(params[:id]))
      @username = params[:id]
    else
      redirect_to root_path, :alert => "User not found!"
    end
  end

  # Backend code for pages/explore
  def explore
  end
end
