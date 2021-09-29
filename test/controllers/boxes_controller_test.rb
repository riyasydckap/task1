require "test_helper"

class BoxesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get boxes_create_url
    assert_response :success
  end
end
