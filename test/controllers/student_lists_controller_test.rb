require "test_helper"

class StudentListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student_list = student_lists(:one)
  end

  test "should get index" do
    get student_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_student_list_url
    assert_response :success
  end

  test "should create student_list" do
    assert_difference('StudentList.count') do
      post student_lists_url, params: { student_list: { date: @student_list.date } }
    end

    assert_redirected_to student_list_url(StudentList.last)
  end

  test "should show student_list" do
    get student_list_url(@student_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_list_url(@student_list)
    assert_response :success
  end

  test "should update student_list" do
    patch student_list_url(@student_list), params: { student_list: { date: @student_list.date } }
    assert_redirected_to student_list_url(@student_list)
  end

  test "should destroy student_list" do
    assert_difference('StudentList.count', -1) do
      delete student_list_url(@student_list)
    end

    assert_redirected_to student_lists_url
  end
end
