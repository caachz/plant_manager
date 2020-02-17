class AddColumnToPlants < ActiveRecord::Migration[5.1]
  def change
    add_column :plants, :name, :string
  end
end
