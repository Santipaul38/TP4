require 'test_helper'

class CarStylesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @car_style = car_styles(:one)
  end

  test "should get index" do
    get car_styles_url
    assert_response :success
  end

  test "should get new" do
    get new_car_style_url
    assert_response :success
  end

  test "should create car_style" do
    assert_difference('CarStyle.count') do
      post car_styles_url, params: { car_style: { name: @car_style.name } }
    end

    assert_redirected_to car_style_url(CarStyle.last)
  end

  test "should show car_style" do
    get car_style_url(@car_style)
    assert_response :success
  end

  test "should get edit" do
    get edit_car_style_url(@car_style)
    assert_response :success
  end

  test "should update car_style" do
    patch car_style_url(@car_style), params: { car_style: { name: @car_style.name } }
    assert_redirected_to car_style_url(@car_style)
  end

  test "should destroy car_style" do
    assert_difference('CarStyle.count', -1) do
      delete car_style_url(@car_style)
    end

    assert_redirected_to car_styles_url
  end
end
