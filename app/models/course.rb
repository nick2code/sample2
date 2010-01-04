class Course < ActiveRecord::Base
  belongs_to :dept
  belongs_to :teacher
  has_many :course_takings
  has_many :students, :through => :course_takings
  
  
  
  validates_presence_of :name, :message => "名稱不可空白"
  validates_numericality_of :credit, :greater_than => 0, :message => "學分不可為零"

  has_friendly_id :name
end
