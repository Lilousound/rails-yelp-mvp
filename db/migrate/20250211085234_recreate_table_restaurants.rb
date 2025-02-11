class RecreateTableRestaurants < ActiveRecord::Migration[8.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :phone_number
      t.integer :rating
      t.string :category

      t.timestamps

    end
  end
end
