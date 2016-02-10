class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.column :questions, :string
      t.column :survey_id, :integer

      t.timestamps
    end
  end
end
