class AnswersController < ApplicationController
	before_action :authenticate_user!

	def new
		@question = Question.find(params[:question_id])
		@answer = Answer.new
	end

	def create
		@question = Question.find(params[:question_id])
		@answer = @question.answers.create(answer_params)
		redirect_to root_path
	end
	
	private
	def answer_params
		params.require(:answer).permit(:description, :user_id)
	end
end
