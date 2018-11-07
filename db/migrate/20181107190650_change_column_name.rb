class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :flats, :adress, :address
  end
end
