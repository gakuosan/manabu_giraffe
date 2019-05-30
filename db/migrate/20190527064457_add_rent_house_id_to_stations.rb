class AddRentHouseIdToStations < ActiveRecord::Migration[5.2]
  def change
    add_column :stations, :title, :integer
  end
end
