class Dept < ActiveRecord::Base
  has_many :students
  has_many :teachers

  has_friendly_id :name
end
