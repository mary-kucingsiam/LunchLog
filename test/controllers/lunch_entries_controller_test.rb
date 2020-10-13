require 'test_helper'

class LunchEntriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lunch_entry = lunch_entries(:one)
  end

  test "should get index" do
    get lunch_entries_url
    assert_response :success
  end

  test "should get new" do
    get new_lunch_entry_url
    assert_response :success
  end

  test "should create lunch_entry" do
    assert_difference('LunchEntry.count') do
      post lunch_entries_url, params: { lunch_entry: { author: @lunch_entry.author, date: @lunch_entry.date, food_name: @lunch_entry.food_name, title: @lunch_entry.title } }
    end

    assert_redirected_to lunch_entry_url(LunchEntry.last)
  end

  test "should show lunch_entry" do
    get lunch_entry_url(@lunch_entry)
    assert_response :success
  end

  test "should get edit" do
    get edit_lunch_entry_url(@lunch_entry)
    assert_response :success
  end

  test "should update lunch_entry" do
    patch lunch_entry_url(@lunch_entry), params: { lunch_entry: { author: @lunch_entry.author, date: @lunch_entry.date, food_name: @lunch_entry.food_name, title: @lunch_entry.title } }
    assert_redirected_to lunch_entry_url(@lunch_entry)
  end

  test "should destroy lunch_entry" do
    assert_difference('LunchEntry.count', -1) do
      delete lunch_entry_url(@lunch_entry)
    end

    assert_redirected_to lunch_entries_url
  end
end
