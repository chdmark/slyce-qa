class QasController < ApplicationController
	

	def create
		p "*" * 50
		p params
		p "*" * 50
		athlete = Athlete.find_or_create_by(name: params[:host_name])
		host_id = athlete.id

		@qa = Qa.new(host_id: host_id, start_time: params[:start_time], end_time: params[:end_time])

		@qa.save 

		render json: @qa



	end

	def show
		@qa = Qa.find(params[:id])
		
		render json: @qa
	end


end
