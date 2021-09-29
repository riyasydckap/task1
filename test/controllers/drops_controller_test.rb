require "test_helper"

class DropsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get drops_new_url
    assert_response :success
  end
end
