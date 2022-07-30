require "application_system_test_case"

class StudentListsTest < ApplicationSystemTestCase
  setup do
    @student_list = student_lists(:one)
  end

  test "visiting the index" do
    visit student_lists_url
    assert_selector "h1", text: "Student Lists"
  end

  test "creating a Student list" do
    visit student_lists_url
    click_on "New Student List"

    fill_in "Date", with: @student_list.date
    click_on "Create Student list"

    assert_text "Student list was successfully created"
    click_on "Back"
  end

  test "updating a Student list" do
    visit student_lists_url
    click_on "Edit", match: :first

    fill_in "Date", with: @student_list.date
    click_on "Update Student list"

    assert_text "Student list was successfully updated"
    click_on "Back"
  end

  test "destroying a Student list" do
    visit student_lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Student list was successfully destroyed"
  end
end
