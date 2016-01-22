class QuestionsController < ApplicationController
	def create
		@question = Question.new(qa_id: params[:qa_id], content: params[:content], name: params[:name])

		@question.save

		render json: @question
	end
end
