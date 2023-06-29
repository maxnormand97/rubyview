class Api::V1::QuestionsController < ApplicationController
  def index
    questions = Question.all

    render json: questions
    render json: QuestionSerializer.new(questions)

    # if questions
    #   render json: {status: "SUCCESS", message: "Fetched all the questions successfully", data: questions}, status: :ok
    # else
    #   render json: questions.errors, status: :bad_request
    # end
  end
end