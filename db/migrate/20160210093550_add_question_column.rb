class AddQuestionColumn < ActiveRecord::Migration
  def change
    add_column :quizzes, :question, :string
  end
end
