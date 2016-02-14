class ChoicesController < ApplicationController
  def new
    @question = Question.find(params[:question_id])
    @choice = @question.choices.new
  end

  def create
    @question = Question.find(params[:question_id])
    @choice = @question.choices.new(choice_params)
    if @choice.save
      redirect_to survey_path(@question.survey)
    else
      render :new
    end
  end

private
  def choice_params
    params.require(:choice).permit(:content, :value)
  end
end
