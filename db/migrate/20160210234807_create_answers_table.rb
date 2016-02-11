class CreateAnswersTable < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.column :answer, :string
      t.column :quiz_id, :integer

      t.timestamps
    end
  end
end
