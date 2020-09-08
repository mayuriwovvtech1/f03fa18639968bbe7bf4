class Topic < ApplicationRecord
	belongs_to :user
	has_many :follows, as: :followable
end
