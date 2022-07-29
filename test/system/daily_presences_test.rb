require "application_system_test_case"

class DailyPresencesTest < ApplicationSystemTestCase
  setup do
    @daily_presence = daily_presences(:one)
  end

  test "visiting the index" do
    visit daily_presences_url
    assert_selector "h1", text: "Daily Presences"
  end

  test "creating a Daily presence" do
    visit daily_presences_url
    click_on "New Daily Presence"

    fill_in "Date", with: @daily_presence.date
    fill_in "Student", with: @daily_presence.student_id
    click_on "Create Daily presence"

    assert_text "Daily presence was successfully created"
    click_on "Back"
  end

  test "updating a Daily presence" do
    visit daily_presences_url
    click_on "Edit", match: :first

    fill_in "Date", with: @daily_presence.date
    fill_in "Student", with: @daily_presence.student_id
    click_on "Update Daily presence"

    assert_text "Daily presence was successfully updated"
    click_on "Back"
  end

  test "destroying a Daily presence" do
    visit daily_presences_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Daily presence was successfully destroyed"
  end
end
