class FollwersController < ApplicationController
	def create
		if params[:follow][:question_id].present?
			qes = Question.find(params[:follow][:question_id])
			follower = qes.follows.create(follow_params)
			redirect_to user_question_path(user_id: qes.user_id, id: qes.id)
		elsif params[:follow][:topic_id].present?
			topic = Topic.find(params[:follow][:topic_id])
			follower = topic.follows.create(follow_params)
			redirect_to root_path
		end			
	end

	private
	def follow_params
		params.require(:follow).permit(:user_id, :followed)
	end
end
