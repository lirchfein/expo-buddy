class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.references :user, foreign_key: true
      t.references :exhibitor, foreign_key: true
      t.boolean :visited, default: false

      t.timestamps
    end
  end
end
