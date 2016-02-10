class ChangeTable < ActiveRecord::Migration
  def self.up
    remove_column :quizzes, :questions
  end

  def self.down
    add_column :quizzes, :question
  end
end
