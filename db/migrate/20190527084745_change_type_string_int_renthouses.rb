class ChangeTypeStringIntRenthouses < ActiveRecord::Migration[5.2]
  def change
    change_column :rent_houses, :age, :string
  end
end
