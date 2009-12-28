class Student < ActiveRecord::Base
  belongs_to :dept

  validates_presence_of :name, :sex, :dept_id

  has_friendly_id :name
end
