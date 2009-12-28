class AddDeptIdToDept < ActiveRecord::Migration
  def self.up
    add_column :depts, :dept_id, :integer
  end

  def self.down
    remove_column :depts, :dept_id
  end
end
