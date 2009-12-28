class RemoveDeptIdFromCourse < ActiveRecord::Migration
  def self.up
    remove_column :courses, :dept_id
  end

  def self.down
    add_column :courses, :dept_id, :integer
  end
end
