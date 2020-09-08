class Answer < ApplicationRecord
	belongs_to :question
	has_many :follows, as: :followable
end
