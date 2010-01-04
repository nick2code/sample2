class DropTeachers < ActiveRecord::Migration
  def self.up
    drop_table :teachers
  end


end
