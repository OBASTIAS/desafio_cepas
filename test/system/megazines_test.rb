require "application_system_test_case"

class MegazinesTest < ApplicationSystemTestCase
  setup do
    @megazine = megazines(:one)
  end

  test "visiting the index" do
    visit megazines_url
    assert_selector "h1", text: "Megazines"
  end

  test "creating a Megazine" do
    visit megazines_url
    click_on "New Megazine"

    fill_in "Name", with: @megazine.name
    fill_in "Oenologist", with: @megazine.oenologist_id
    click_on "Create Megazine"

    assert_text "Megazine was successfully created"
    click_on "Back"
  end

  test "updating a Megazine" do
    visit megazines_url
    click_on "Edit", match: :first

    fill_in "Name", with: @megazine.name
    fill_in "Oenologist", with: @megazine.oenologist_id
    click_on "Update Megazine"

    assert_text "Megazine was successfully updated"
    click_on "Back"
  end

  test "destroying a Megazine" do
    visit megazines_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Megazine was successfully destroyed"
  end
end
