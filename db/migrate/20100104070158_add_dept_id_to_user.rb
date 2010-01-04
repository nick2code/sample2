class AddDeptIdToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :dept_id, :integer
  end

  def self.down
    remove_column :users, :dept_id
  end
end
