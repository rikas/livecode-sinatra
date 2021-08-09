class AddNullFalseToAddressOnRestaurants < ActiveRecord::Migration[6.0]
  def change
    change_column :restaurants, :address, :string, null: false
  end
end
