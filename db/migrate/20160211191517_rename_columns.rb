class RenameColumns < ActiveRecord::Migration
  def change
    rename_column :quizzes, :question, :content
    rename_column :choices, :answer, :content
  end
end
