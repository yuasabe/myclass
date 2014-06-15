class StaticPagesController < ApplicationController
  def home
  	@user = current_user if user_signed_in?
  	#@community = @user.communities.build if user_signed_in?
  	#@communities = Community.all if user_signed_in?
  end

  def help
  end

  
end
