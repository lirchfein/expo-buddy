class AddHallAndBoothToExhibitor < ActiveRecord::Migration[5.2]
  def change
    add_column :exhibitors, :hall, :string
    add_column :exhibitors, :stand, :string
  end
end
