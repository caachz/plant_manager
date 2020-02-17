class CreatePlantsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :plants do |t|
      t.string :type
      t.timestamps
    end
  end
end
