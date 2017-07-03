class PagesController < ApplicationController
  def index
  end

  def home
  	 @posts = Post.all
  end

  def profile
  	# grab the username from the user in the url
  	if (User.find_by_username(params[:id]))
  	@username = params[:id]
  else
  	# redirect 404
  	redirect_to root_path, :notice=> "User not found"
  end

  @posts = Post.all
end

  def explore
  	 @posts = Post.all
  end
end
