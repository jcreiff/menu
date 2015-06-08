require 'test_helper'

class DishTest < ActiveSupport::TestCase
  test "associates with course" do
    assert_equal "Breakfast", dishes(:one).course.name
    assert_equal "Lunch", dishes(:three).course.name
    assert_equal "Dinner", dishes(:five).course.name
  end

  test "can show name, description, and price" do
    assert_equal "Pasta", dishes(:six).name
    assert_equal "White Sauce or Red Sauce", dishes(:six).description
    assert_equal 10.99, dishes(:six).price
  end

  test "require all params but description" do
    one = Dish.new(course: courses(:one), name: "Cereal", description: "Self-explanatory", price: 1.99)
    two = Dish.new(name: "Cereal", description: "Self-explanatory", price: 1.99)
    three = Dish.new(course: courses(:one), description: "Self-explanatory", price: 1.99)
    four = Dish.new(course: courses(:one), name: "Cereal", price: 1.99)
    five = Dish.new(course: courses(:one), name: "Cereal", description: "Self-explanatory")

    assert one.save
    refute two.save
    refute three.save
    assert four.save
    refute five.save
  end
end
