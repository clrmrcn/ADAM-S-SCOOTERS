class AddCoordinatesToScooters < ActiveRecord::Migration[6.1]
  def change
    add_column :scooters, :latitude, :float
    add_column :scooters, :longitude, :float
  end
end
