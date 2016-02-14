class UpdateSurveys < ActiveRecord::Migration
  def change
    add_column :surveys, :resultA, :string
    add_column :surveys, :resultB, :string
  end
end
