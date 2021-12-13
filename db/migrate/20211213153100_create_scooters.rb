class CreateScooters < ActiveRecord::Migration[6.1]
  def change
    create_table :scooters do |t|
      t.string :model
      t.string :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
