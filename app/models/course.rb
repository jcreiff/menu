class Course < ActiveRecord::Base

  has_many :dishes, dependent: :restrict_with_error

  def list_dishes
    dishes.map {|d| d.name}
  end

end
