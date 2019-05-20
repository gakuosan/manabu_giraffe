class CreateRentHouses < ActiveRecord::Migration[5.0]
  def change
    create_table :rent_houses do |t|
      t.string :home_name
      t.string :rent
      t.string :address
      t.integer :age
      t.string :note
      t.string :stations

      t.timestamps
    end
  end
end
