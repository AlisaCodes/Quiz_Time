class AddValueToChoices < ActiveRecord::Migration
  def change
    add_column :choices, :value, :integer
  end
end
