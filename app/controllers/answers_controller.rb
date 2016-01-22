class AnswersController < ApplicationController
	def create
		p params
		@answer = Answer.new(qa_id: params[:qa_id], content: params[:content], image_url: params[:image_url], name: params[:name])
		@answer.save

		render json: @answer

	end
end
