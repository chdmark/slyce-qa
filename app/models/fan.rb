class Fan < ActiveRecord::Base
	has_many :qa
	has_many :questions, through: :qa
end
