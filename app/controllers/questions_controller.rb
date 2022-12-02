class QuestionsController < ApplicationController

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)

    if @question.save
      respond_to do |format|
        # format.html { redirect_to edit_assessment_path(id: params[:assessment_id]), notice: "question was successfully created." }
        format.html { redirect_to assessments_path, notice: "question was successfully created." }
        format.turbo_stream
      end
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def question_params
    params.require(:question).permit(:label, :description, :question_type)
  end

end
