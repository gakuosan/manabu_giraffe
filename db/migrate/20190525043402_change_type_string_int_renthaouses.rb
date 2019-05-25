class ChangeTypeStringIntRenthaouses < ActiveRecord::Migration[5.0]
  def change
    change_column :rent_houses, :age, :string
  end
end
