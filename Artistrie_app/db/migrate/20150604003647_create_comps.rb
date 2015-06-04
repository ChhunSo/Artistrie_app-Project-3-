class CreateComps < ActiveRecord::Migration
  def change
    create_table :comps do |t|
      t.string :title
      t.string :theme
      t.date :start_date
      t.date :end_date

      t.timestamps null: false
    end
  end
end
