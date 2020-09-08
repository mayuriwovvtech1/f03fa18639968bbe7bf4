class User < ApplicationRecord
	has_many :questions
  has_many :topics
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


   def self.answers(user_id)
   		user = User.find(user_id)
   		answers = Answer.where('user_id = ?', user.id)
   end

   def self.following(user_id)
   		user = User.find(user_id)
   		follows = Follow.where('user_id = ?', user.id)
   end
end
