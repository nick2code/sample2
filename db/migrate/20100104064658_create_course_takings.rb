class CreateCourseTakings < ActiveRecord::Migration
  def self.up
    create_table :course_takings do |t|
      t.integer :student_id
      t.integer :course_id

      t.timestamps
    end
  end

  def self.down
    drop_table :course_takings
  end
end
