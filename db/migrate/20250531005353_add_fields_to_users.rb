class AddFieldsToUsers < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :full_name, :string
    add_column :users, :rut, :string
    add_column :users, :birthdate, :date
    add_column :users, :position, :string
    add_column :users, :phone_number, :string
    add_column :users, :mesa, :integer
    add_column :users, :campus, :string
    add_column :users, :area, :string
  end
end
