class CreateNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :notes do |t|
      t.string :message
      t.references :exhibitor, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
