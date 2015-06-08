require 'test_helper'

class CourseTest < ActiveSupport::TestCase
  test "knows associated dishes" do
    assert_equal ["Pancakes", "Eggs"], courses(:one).list_dishes
    assert_equal ["Sandwich", "Soup of the Day"], courses(:two).list_dishes
    assert_equal ["Pasta", "Steak"], courses(:three).list_dishes
  end

  test "can't destroy course" do
    assert_raise ActiveRecord::RecordNotDestroyed do
      courses(:one).destroy!
    end
  end

end
