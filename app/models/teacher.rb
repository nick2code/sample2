class Teacher < User
  belongs_to :dept
  has_many :courses

  validates_presence_of :name, :dept_id

  has_friendly_id :name
end
