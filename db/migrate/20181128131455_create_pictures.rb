class CreatePictures < ActiveRecord::Migration[5.2]
  def change
    create_table :pictures do |t|
      t.string :pic
      t.references :user, foreign_key: true
      t.references :exhibitor, foreign_key: true

      t.timestamps
    end
  end
end
