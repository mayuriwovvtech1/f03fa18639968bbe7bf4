module ApplicationHelper
	def question_follows?(user_id,question_id)
		@question = Question.find(question_id)
		@question.follows.pluck(:user_id).include?(user_id)
	end

	def topic_follows?(user_id,topic_id)
		@topic = Topic.find(topic_id)
		@topic.follows.pluck(:user_id).include?(user_id)
	end
end
