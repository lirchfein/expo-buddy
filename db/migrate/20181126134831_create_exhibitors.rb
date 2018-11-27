class CreateExhibitors < ActiveRecord::Migration[5.2]
  def change
    create_table :exhibitors do |t|
      t.string :name
      t.string :icon
      t.string :location
      t.string :description
      t.string :product_category
      t.references :expo, foreign_key: true

      t.timestamps
    end
  end
end
