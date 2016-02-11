class ChoicesController < ApplicationController
  def new
    @question = Question.find(params[:question_id])
    @choice = @question.choices.new
  end
end
