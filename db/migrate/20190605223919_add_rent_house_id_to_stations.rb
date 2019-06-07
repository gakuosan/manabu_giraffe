class AddRentHouseIdToStations < ActiveRecord::Migration[5.2]
  def change
    add_column :stations, :rent_house_id, :integer
    add_reference :stations, :stations, foreign_key: true
  end
end
