class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
  	@users = User.all
  end

  def show
  	# @user = current_user
    @user = User.find(params[:id])
    # @community_id = @community.user.id
  end

  private
	def user_params
		params.require(:user).permit(:name, :school, :grade_id, :community_id)
	end
end
