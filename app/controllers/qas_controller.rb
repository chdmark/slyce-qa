class QasController < ApplicationController
	def index
		@qa = Qa.all
	end

	def create
		athlete = Athlete.find_by(name: params[:host_name]).first_or_create(name: params[:host_name])
		host_id = athlete.id

		qa = Qa.new(host_id: host_id, start_time: params[:start_time], end_time: params[:end_time])

		qa.save 

	end

	def show
		
	end
end
