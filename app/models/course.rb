class Course < ActiveRecord::Base

  has_many :dishes, dependent: :restrict_with_error

end
