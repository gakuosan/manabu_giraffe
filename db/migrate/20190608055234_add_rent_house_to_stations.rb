class AddRentHouseToStations < ActiveRecord::Migration[5.2]
  def change
    add_reference :stations, :rent_house, foreign_key: true
  end
end
