class Athlete < ActiveRecord::Base
	has_many :qas 
	belongs_to :sport
end
