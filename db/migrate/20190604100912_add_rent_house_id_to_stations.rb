class AddRentHouseIdToStations < ActiveRecord::Migration[5.2]
  def change
    add_column :stations, :rent_house_id, :integer
    add_column :stations, :stations, :referencesrails
    add_column :stations, :g, :string
    add_column :stations, :migration, :string
    add_column :stations, :RentHouseIdToStations, :string
    add_column :stations, :rent_house_id, :integer
    add_reference :stations, :stations, foreign_key: true
  end
end
