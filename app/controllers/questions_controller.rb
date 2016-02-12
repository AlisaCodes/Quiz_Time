class QuestionsController < ApplicationController
  def show
    @survey = Survey.find(params[:survey_id])
    # @question = @survey.questions.where(id: params[:id])

    @question = Question.find(params[:id])
  end

  def new
    @survey = Survey.find(params[:survey_id])
    @question = @survey.questions.new
  end

  def create
    @survey = Survey.find(params[:survey_id])
    @question = @survey.questions.new(question_params)
    if @question.save
      redirect_to survey_path(@question.survey)
    else
      render :new
    end
  end

private
  def question_params
    params.require(:question).permit(:content)
  end
end
