class AddDeptIdToStudent < ActiveRecord::Migration
  def self.up
    add_column :students, :dept_id, :integer
  end

  def self.down
    remove_column :students, :dept_id
  end
end
