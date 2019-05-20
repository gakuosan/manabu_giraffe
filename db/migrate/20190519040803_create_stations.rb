class CreateStations < ActiveRecord::Migration[5.0]
  def change
    create_table :stations do |t|
      t.string :station_name
      t.string :walking_minutes
      t.string :along_the_line

      t.timestamps
    end
  end
end
