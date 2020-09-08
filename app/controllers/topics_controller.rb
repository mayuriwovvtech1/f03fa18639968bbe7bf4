class TopicsController < ApplicationController
	before_action :authenticate_user!

	def index
		@user = current_user
		@topics = Topic.all
	end

	def new
		@topic = Topic.new
	end

	def create
		@user = User.find(params[:user_id])
		@topic = @user.topics.create(topic_params)
		redirect_to root_path
	end

	def show
		@topic = Topic.find(params[:id])
	end

	private
	def topic_params
		params.require(:topic).permit(:name, :description)
	end
end
