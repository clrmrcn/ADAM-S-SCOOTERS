class AddAvailableToScooters < ActiveRecord::Migration[6.1]
  def change
    add_column :scooters, :available, :date
  end
end
