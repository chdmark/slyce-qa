class Answer < ActiveRecord::Base
	belongs_to :athlete
	belongs_to :question
	belongs_to :qa
end
