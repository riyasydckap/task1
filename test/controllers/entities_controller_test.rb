require "test_helper"

class EntitiesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get entities_new_url
    assert_response :success
  end
end
