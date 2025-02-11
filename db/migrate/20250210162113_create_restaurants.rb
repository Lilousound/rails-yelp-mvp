class CreateRestaurants < ActiveRecord::Migration[8.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :adress
      t.integer :phone_number
      t.integer :rating
      t.string :category

      t.timestamps
    end
  end
end
