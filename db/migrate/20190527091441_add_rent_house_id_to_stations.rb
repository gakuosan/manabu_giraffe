class AddRentHouseIdToStations < ActiveRecord::Migration[5.2]
  def change
    add_column :stations, :rent_house_id, :integer
  end
end
