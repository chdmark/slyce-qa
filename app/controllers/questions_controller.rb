class QuestionsController < ApplicationController
	def index
		@qa = Qa.find(params[:qa_id])
		@questions = Question.where(qa_id: @qa.id)
		@answers = Answer.where(qa_id: @qa.id)
		@unanswered_questions = Answer.where(qa_id: @qa.id, content: nil)

		render json: {questions: @questions, answers: @answers, unanswered_questions: @unanswered_questions}
	end

	def create
		@question = Question.new(qa_id: params[:qa_id], content: params[:content], name: params[:name])

		@question.save

		render json: @question
	end
end
