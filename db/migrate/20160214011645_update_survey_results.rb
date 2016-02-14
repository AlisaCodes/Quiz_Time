class UpdateSurveyResults < ActiveRecord::Migration
  def change
    add_column :surveys, :points, :integer, default: 0
  end
end
