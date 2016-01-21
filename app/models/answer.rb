class Answer < ActiveRecord::Base
	belongs_to :athlete
	belongs_to :question
end
