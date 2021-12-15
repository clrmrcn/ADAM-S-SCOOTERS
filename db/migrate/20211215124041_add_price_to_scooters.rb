class AddPriceToScooters < ActiveRecord::Migration[6.1]
  def change
    add_column :scooters, :price, :integer
  end
end
