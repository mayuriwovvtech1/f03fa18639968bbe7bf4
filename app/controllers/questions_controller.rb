class QuestionsController < ApplicationController
	before_action :authenticate_user!

	def index
		@user = current_user
		@user_answers = User.answers(@user.id)
		@user_following = User.following(@user.id)
		@quotions = Question.all
	end

	def new
		@question = Question.new
	end

	def create
		@user = User.find(params[:user_id])
		@question = @user.questions.create(question_params)
		redirect_to root_path
	end

	def show
		@question = Question.find(params[:id])
	end

	private
	def question_params
		params.require(:question).permit(:question)
	end
end
