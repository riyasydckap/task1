require "test_helper"

class FetchesControllerTest < ActionDispatch::IntegrationTest
  test "should get box" do
    get fetches_box_url
    assert_response :success
  end

  test "should get drop" do
    get fetches_drop_url
    assert_response :success
  end

  test "should get entitiy" do
    get fetches_entitiy_url
    assert_response :success
  end

  test "should get tier" do
    get fetches_tier_url
    assert_response :success
  end
end
