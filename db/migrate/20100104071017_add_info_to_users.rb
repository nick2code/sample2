class AddInfoToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :name, :string
    add_column :users, :sex, :string
    add_column :users, :email, :string
  end

  def self.down
    remove_column :users, :email
    remove_column :users, :sex
    remove_column :users, :name
  end
end
