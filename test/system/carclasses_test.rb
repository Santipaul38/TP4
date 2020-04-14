require "application_system_test_case"

class CarclassesTest < ApplicationSystemTestCase
  setup do
    @carclass = carclasses(:one)
  end

  test "visiting the index" do
    visit carclasses_url
    assert_selector "h1", text: "Carclasses"
  end

  test "creating a Carclass" do
    visit carclasses_url
    click_on "New Carclass"

    fill_in "Name", with: @carclass.name
    click_on "Create Carclass"

    assert_text "Carclass was successfully created"
    click_on "Back"
  end

  test "updating a Carclass" do
    visit carclasses_url
    click_on "Edit", match: :first

    fill_in "Name", with: @carclass.name
    click_on "Update Carclass"

    assert_text "Carclass was successfully updated"
    click_on "Back"
  end

  test "destroying a Carclass" do
    visit carclasses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Carclass was successfully destroyed"
  end
end
