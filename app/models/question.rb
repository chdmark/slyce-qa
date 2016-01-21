class Question < ActiveRecord::Base
	has_many :answers
	belongs_to :qa
	belongs_to :fan
end
