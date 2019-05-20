class AddRentHouseIdToStations < ActiveRecord::Migration[5.0]
  def change
    add_column :stations, :title, :string
  end
end
