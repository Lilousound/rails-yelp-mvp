class ChangeAdressToAddressToRestaurants < ActiveRecord::Migration[8.0]
  def change
    change_column :restaurants, :adress, :address
  end
end
