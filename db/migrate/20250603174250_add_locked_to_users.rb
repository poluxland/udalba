class AddLockedToUsers < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :locked, :boolean, default: false, null: false
  end
end
