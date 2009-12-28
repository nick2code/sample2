class RemoveDeptIdFromDept < ActiveRecord::Migration
  def self.up
    remove_column :depts, :dept_id
  end

  def self.down
    add_column :depts, :dept_id, :integer
  end
end
