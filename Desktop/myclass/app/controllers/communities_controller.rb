class CommunitiesController < ApplicationController


	#@community = current_user.communities.build(community_params)

	def index
		#@communities = Community.all
		if params[:search]
			@communities = Community.find(:all, :conditions => ["name LIKE ?", "%#{params[:search]}%"])
		else
			@communities = Community.paginate(page: params[:page], per_page: 5)
		end
	end

	def show
		@community = Community.find(params[:id])
		#@user = User.find_by(id:community.creator_id)
	end

	def join
		@community = Community.find(params[:id])
		@community.users << current_user
		if @community.save
			flash[:success] = "Joined Community!"
			#redirect_to action: 'show'
			redirect_to communities_path
		else
			flash[:success] = "ERROR"
			redirect_to communities_path
		end
	end

	def leave
		@community01 = Community.find(params[:id])
		@community01.users.delete(current_user)

		if @community01.save
			flash[:success] = "Left Community"
			redirect_to communities_path
		else
			flash[:success] = "ERROR"
			redirect_to communities_path
		end
	end

	def create
		#@community = params.require(:community).permit(:name, :desc, :user_id, :creator_id)
		@community = Community.new(community_params)
		@community.creator_id = current_user.id
		#@community.user_id = current_user.id
		#@community.user = current_user
		#current_user.communities << @community
		@community.users << current_user

		if @community.save
			flash[:success] = "Community Made!"

			redirect_to communities_path
		else
			flash[:success] = "Failed. Community already exists."
			redirect_to root_path
		end

	end



	private
	def community_params
		params.require(:community).permit(:name, :desc, :user_id, :creator_id)
	end

end