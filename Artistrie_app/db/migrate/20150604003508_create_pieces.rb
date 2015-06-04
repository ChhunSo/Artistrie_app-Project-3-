class CreatePieces < ActiveRecord::Migration
  def change
    create_table :pieces do |t|
      t.string :title
      t.string :medium
      t.integer :competition_id
      t.integer :user_id
      t.string :img_url
      t.integer :likes

      t.timestamps null: false
    end
  end
end
