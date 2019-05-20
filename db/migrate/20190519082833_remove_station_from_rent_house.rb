class RemoveStationFromRentHouse < ActiveRecord::Migration[5.0]
  def change
    remove_column :rent_houses, :station, :string
  end
end
