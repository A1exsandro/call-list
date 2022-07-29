require "test_helper"

class DailyPresencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @daily_presence = daily_presences(:one)
  end

  test "should get index" do
    get daily_presences_url
    assert_response :success
  end

  test "should get new" do
    get new_daily_presence_url
    assert_response :success
  end

  test "should create daily_presence" do
    assert_difference('DailyPresence.count') do
      post daily_presences_url, params: { daily_presence: { date: @daily_presence.date, student_id: @daily_presence.student_id } }
    end

    assert_redirected_to daily_presence_url(DailyPresence.last)
  end

  test "should show daily_presence" do
    get daily_presence_url(@daily_presence)
    assert_response :success
  end

  test "should get edit" do
    get edit_daily_presence_url(@daily_presence)
    assert_response :success
  end

  test "should update daily_presence" do
    patch daily_presence_url(@daily_presence), params: { daily_presence: { date: @daily_presence.date, student_id: @daily_presence.student_id } }
    assert_redirected_to daily_presence_url(@daily_presence)
  end

  test "should destroy daily_presence" do
    assert_difference('DailyPresence.count', -1) do
      delete daily_presence_url(@daily_presence)
    end

    assert_redirected_to daily_presences_url
  end
end
