class RenameChoiceColumn < ActiveRecord::Migration
  def change
    rename_column :choices, :quiz_id, :question_id
  end
end
