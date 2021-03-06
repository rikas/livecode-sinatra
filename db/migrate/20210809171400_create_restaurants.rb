class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name, null: false
      t.string :address
      t.integer :rating, default: 0, null: false
      t.timestamps
    end
  end
end
