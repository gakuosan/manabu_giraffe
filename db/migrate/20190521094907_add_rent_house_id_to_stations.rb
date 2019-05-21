class AddRentHouseIdToStations < ActiveRecord::Migration[5.0]
  def change
    add_column :stations, :rent_house_id, :integer
  end
end
