require "application_system_test_case"

class LunchEntriesTest < ApplicationSystemTestCase
  setup do
    @lunch_entry = lunch_entries(:one)
  end

  test "visiting the index" do
    visit lunch_entries_url
    assert_selector "h1", text: "Lunch Entries"
  end

  test "creating a Lunch entry" do
    visit lunch_entries_url
    click_on "New Lunch Entry"

    fill_in "Author", with: @lunch_entry.author
    fill_in "Date", with: @lunch_entry.date
    fill_in "Food name", with: @lunch_entry.food_name
    fill_in "Title", with: @lunch_entry.title
    click_on "Create Lunch entry"

    assert_text "Lunch entry was successfully created"
    click_on "Back"
  end

  test "updating a Lunch entry" do
    visit lunch_entries_url
    click_on "Edit", match: :first

    fill_in "Author", with: @lunch_entry.author
    fill_in "Date", with: @lunch_entry.date
    fill_in "Food name", with: @lunch_entry.food_name
    fill_in "Title", with: @lunch_entry.title
    click_on "Update Lunch entry"

    assert_text "Lunch entry was successfully updated"
    click_on "Back"
  end

  test "destroying a Lunch entry" do
    visit lunch_entries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lunch entry was successfully destroyed"
  end
end
