class User < ActiveRecord::Base
  acts_as_authentic do |conf|
    conf.validate_email_field = false
  end
  
  ALLOWED_USER_TYPES = %w(Student Teacher)
end
