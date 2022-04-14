require "test_helper"

class BreadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bread = breads(:one)
  end

  test "should get index" do
    get breads_url
    assert_response :success
  end

  test "should get new" do
    get new_bread_url
    assert_response :success
  end

  test "should create bread" do
    assert_difference("Bread.count") do
      post breads_url, params: { bread: { name: @bread.name, story: @bread.story } }
    end

    assert_redirected_to bread_url(Bread.last)
  end

  test "should show bread" do
    get bread_url(@bread)
    assert_response :success
  end

  test "should get edit" do
    get edit_bread_url(@bread)
    assert_response :success
  end

  test "should update bread" do
    patch bread_url(@bread), params: { bread: { name: @bread.name, story: @bread.story } }
    assert_redirected_to bread_url(@bread)
  end

  test "should destroy bread" do
    assert_difference("Bread.count", -1) do
      delete bread_url(@bread)
    end

    assert_redirected_to breads_url
  end
end
