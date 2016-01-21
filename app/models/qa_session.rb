class QaSession < ActiveRecord::Base
	belongs_to :host, class_name: 'Athlete'
	belongs_to :fan
end
