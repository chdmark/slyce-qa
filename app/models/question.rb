class Question < ActiveRecord::Base
	has_one :answer
	belongs_to :fan
end
