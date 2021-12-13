class CreateScooters < ActiveRecord::Migration[6.1]
  def change
    create_table :scooters do |t|
      t.string :model
      t.string :description

      t.timestamps
    end
  end
end
