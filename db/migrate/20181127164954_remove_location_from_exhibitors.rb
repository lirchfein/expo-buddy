class RemoveLocationFromExhibitors < ActiveRecord::Migration[5.2]
  def change
    remove_column :exhibitors, :location, :string
  end
end
