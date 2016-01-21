class Athlete < ActiveRecord::Base
	has_many :qa_sessions 
	belongs_to :sport
end
