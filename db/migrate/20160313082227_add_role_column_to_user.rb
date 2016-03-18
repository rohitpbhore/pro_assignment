class AddRoleColumnToUser < ActiveRecord::Migration
  def change
    add_column :users, :role, :integer, default: 3
    add_column :users, :name, :string
  end
end
