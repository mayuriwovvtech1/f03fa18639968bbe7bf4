class Question < ApplicationRecord
	belongs_to :user
	has_many :answers
	has_many :follows, as: :followable
end
