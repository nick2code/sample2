class Student < User
  belongs_to :dept
  has_many :course_takings
  has_many :courses, :through => :course_takings 

  validates_presence_of :name, :sex, :dept_id

  has_friendly_id :name
end
