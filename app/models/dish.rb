class Dish < ActiveRecord::Base

  belongs_to :course
  validates :course_id, presence: true
  validates :name, presence: true
  validates :price, presence: true

end
