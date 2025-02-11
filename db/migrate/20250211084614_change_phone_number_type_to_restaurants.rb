class ChangePhoneNumberTypeToRestaurants < ActiveRecord::Migration[8.0]
  def change
    change_column :restaurants, :phone_number, :string
  end
end
