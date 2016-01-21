class Fan < ActiveRecord::Base
	has_many :qa_sessions
	has_many :questions, through: :qa_sessions
end
