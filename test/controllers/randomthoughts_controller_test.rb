require "test_helper"

class RandomthoughtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @randomthought = randomthoughts(:one)
  end

  test "should get index" do
    get randomthoughts_url
    assert_response :success
  end

  test "should get new" do
    get new_randomthought_url
    assert_response :success
  end

  test "should create randomthought" do
    assert_difference("Randomthought.count") do
      post randomthoughts_url, params: { randomthought: { content: @randomthought.content, user_id: @randomthought.user_id } }
    end

    assert_redirected_to randomthought_url(Randomthought.last)
  end

  test "should show randomthought" do
    get randomthought_url(@randomthought)
    assert_response :success
  end

  test "should get edit" do
    get edit_randomthought_url(@randomthought)
    assert_response :success
  end

  test "should update randomthought" do
    patch randomthought_url(@randomthought), params: { randomthought: { content: @randomthought.content, user_id: @randomthought.user_id } }
    assert_redirected_to randomthought_url(@randomthought)
  end

  test "should destroy randomthought" do
    assert_difference("Randomthought.count", -1) do
      delete randomthought_url(@randomthought)
    end

    assert_redirected_to randomthoughts_url
  end
end
