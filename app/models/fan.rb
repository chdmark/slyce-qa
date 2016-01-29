class Fan < ActiveRecord::Base
	has_many :qas
	has_many :questions, through: :qa
end
