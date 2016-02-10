class QuizzesController < ApplicationController
  def new
    @survey = Survey.find(params[:survey_id])
    @quiz = @survey.quizzes.new
  end

  def create
    @survey = Survey.find(params[:survey_id])
    @quiz = @survey.quizzes.new(quiz_params)
    if @quiz.save
      redirect_to survey_path(@quiz.survey)
    else
      render :new
    end
  end

private
  def quiz_params
    params.require(:quiz).permit(:question)
  end
end
