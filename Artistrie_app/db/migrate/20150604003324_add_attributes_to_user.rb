class AddAttributesToUser < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :user_type, :string
  end
end
