require "application_system_test_case"

class CarStylesTest < ApplicationSystemTestCase
  setup do
    @car_style = car_styles(:one)
  end

  test "visiting the index" do
    visit car_styles_url
    assert_selector "h1", text: "Car Styles"
  end

  test "creating a Car style" do
    visit car_styles_url
    click_on "New Car Style"

    fill_in "Name", with: @car_style.name
    click_on "Create Car style"

    assert_text "Car style was successfully created"
    click_on "Back"
  end

  test "updating a Car style" do
    visit car_styles_url
    click_on "Edit", match: :first

    fill_in "Name", with: @car_style.name
    click_on "Update Car style"

    assert_text "Car style was successfully updated"
    click_on "Back"
  end

  test "destroying a Car style" do
    visit car_styles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Car style was successfully destroyed"
  end
end
