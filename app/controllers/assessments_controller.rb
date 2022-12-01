class AssessmentsController < ApplicationController
  before_action :load_assessments
  before_action :load_assessment, only: [:edit]

  def index; end

  def edit; end

  def new 
    @assessment = Assessment.new
  end

  private

  def load_assessments
    @assessments = Assessment.all
  end

  def load_assessment
    @assessment = Assessment.find_by(id: params[:id])
  end
end
