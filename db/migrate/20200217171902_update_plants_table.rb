class UpdatePlantsTable < ActiveRecord::Migration[5.1]
  def change
    add_column :plants, :image, :string
    rename_column :plants, :type, :species
  end
end
