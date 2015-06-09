require 'test_helper'

class DishesControllerTest < ActionController::TestCase
  setup do
    @dish = dishes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dish.id
    assert_response :success
  end

end
