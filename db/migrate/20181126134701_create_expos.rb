class CreateExpos < ActiveRecord::Migration[5.2]
  def change
    create_table :expos do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.string :cover_pic
      t.integer :exhibitors_num
      t.integer :visitors_num
      t.integer :square_meters
      t.string :description
      t.string :city
      t.string :address

      t.timestamps
    end
  end
end
