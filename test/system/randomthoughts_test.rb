require "application_system_test_case"

class RandomthoughtsTest < ApplicationSystemTestCase
  setup do
    @randomthought = randomthoughts(:one)
  end

  test "visiting the index" do
    visit randomthoughts_url
    assert_selector "h1", text: "Randomthoughts"
  end

  test "should create randomthought" do
    visit randomthoughts_url
    click_on "New randomthought"

    fill_in "Content", with: @randomthought.content
    fill_in "User", with: @randomthought.user_id
    click_on "Create Randomthought"

    assert_text "Randomthought was successfully created"
    click_on "Back"
  end

  test "should update Randomthought" do
    visit randomthought_url(@randomthought)
    click_on "Edit this randomthought", match: :first

    fill_in "Content", with: @randomthought.content
    fill_in "User", with: @randomthought.user_id
    click_on "Update Randomthought"

    assert_text "Randomthought was successfully updated"
    click_on "Back"
  end

  test "should destroy Randomthought" do
    visit randomthought_url(@randomthought)
    click_on "Destroy this randomthought", match: :first

    assert_text "Randomthought was successfully destroyed"
  end
end
