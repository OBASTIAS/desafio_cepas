require "application_system_test_case"

class WinesOenologistsTest < ApplicationSystemTestCase
  setup do
    @wines_oenologist = wines_oenologists(:one)
  end

  test "visiting the index" do
    visit wines_oenologists_url
    assert_selector "h1", text: "Wines Oenologists"
  end

  test "creating a Wines oenologist" do
    visit wines_oenologists_url
    click_on "New Wines Oenologist"

    fill_in "Grade", with: @wines_oenologist.grade
    fill_in "Oenologist", with: @wines_oenologist.oenologist_id
    fill_in "Wine", with: @wines_oenologist.wine_id
    click_on "Create Wines oenologist"

    assert_text "Wines oenologist was successfully created"
    click_on "Back"
  end

  test "updating a Wines oenologist" do
    visit wines_oenologists_url
    click_on "Edit", match: :first

    fill_in "Grade", with: @wines_oenologist.grade
    fill_in "Oenologist", with: @wines_oenologist.oenologist_id
    fill_in "Wine", with: @wines_oenologist.wine_id
    click_on "Update Wines oenologist"

    assert_text "Wines oenologist was successfully updated"
    click_on "Back"
  end

  test "destroying a Wines oenologist" do
    visit wines_oenologists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Wines oenologist was successfully destroyed"
  end
end
