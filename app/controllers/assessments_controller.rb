# frozen_string_literal: true

class AssessmentsController < ApplicationController
  before_action :load_assessments
  before_action :load_assessment, only: %i[edit update destroy]
  before_action :load_questions, only: %i[edit]

  def index; end

  def edit; end

  def new
    @assessment = Assessment.new
  end

  def create
    @assessment = Assessment.new(assessment_params)

    respond_to do |format|
      if @assessment.save
        format.html { redirect_to assessments_url, notice: 'assessment was successfully created' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @assessment.update!(assessment_params)
        format.html { redirect_to assessments_url, notice: 'assessment was successfully created' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    respond_to do |format|
      if @assessment.destroy!
        format.html { redirect_to assessments_url, notice: 'Assessment was successfully deleted' }
      else
        format.html { redirect_to assessments_url, status: :unprocessable_entity }
      end
    end
  end

  private

  def assessment_params
    params.require(:assessment).permit(:title, :description)
  end

  def load_assessments
    @assessments = Assessment.all
  end

  def load_assessment
    @assessment = Assessment.find_by(id: params[:id])
  end

  def load_questions
    # @questions = @assessment.questions
    @questions = Question.all
  end
end
