require 'test_helper'

class CarclassesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @carclass = carclasses(:one)
  end

  test "should get index" do
    get carclasses_url
    assert_response :success
  end

  test "should get new" do
    get new_carclass_url
    assert_response :success
  end

  test "should create carclass" do
    assert_difference('Carclass.count') do
      post carclasses_url, params: { carclass: { name: @carclass.name } }
    end

    assert_redirected_to carclass_url(Carclass.last)
  end

  test "should show carclass" do
    get carclass_url(@carclass)
    assert_response :success
  end

  test "should get edit" do
    get edit_carclass_url(@carclass)
    assert_response :success
  end

  test "should update carclass" do
    patch carclass_url(@carclass), params: { carclass: { name: @carclass.name } }
    assert_redirected_to carclass_url(@carclass)
  end

  test "should destroy carclass" do
    assert_difference('Carclass.count', -1) do
      delete carclass_url(@carclass)
    end

    assert_redirected_to carclasses_url
  end
end
