class AddAddressToScooters < ActiveRecord::Migration[6.1]
  def change
    add_column :scooters, :address, :string
  end
end
