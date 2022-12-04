# frozen_string_literal: true

class QuestionsController < ApplicationController
  before_action :load_questions, only: [:index]
  before_action :load_question, only: [:show, :edit, :update, :destroy]

  def index; end

  def new
    @question = Question.new
  end

  # rubocop:disable Layout/LineLength
  def create
    @question = Question.new(question_params)

    if @question.save
      respond_to do |format|
        # format.html { redirect_to edit_assessment_path(id: params[:assessment_id]), notice: "question was successfully created." }
        format.html { redirect_to questions_path, notice: 'question was successfully created.' }
        format.turbo_stream
      end
    else
      render :new, status: :unprocessable_entity
    end
  end
  # rubocop:enable Layout/LineLength

  def update
    if @question.update!(question_params)
      respond_to do |format|
        format.html { redirect_to questions_path, notice: "question was successfully updated." }
        format.turbo_stream { flash.now[:notice] = "question was successfully updated." }
      end
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @question.destroy

    respond_to do |format|
      format.html { redirect_to questions_path, notice: "question was successfully destroyed." }
      format.turbo_stream { flash.now[:notice] = "question was successfully destroyed." }
    end
  end

  private

  def load_question 
    @question = Question.find(params[:id])
  end

  def load_questions
    @questions = Question.all
  end

  def question_params
    params.require(:question).permit(:label, :description, :question_type)
  end
end
