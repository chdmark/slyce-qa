class Qa < ActiveRecord::Base
	belongs_to :host, class_name: 'Athlete'
	has_many :fans
	has_many :questions
	has_many :answers
end
