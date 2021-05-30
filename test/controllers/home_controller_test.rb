require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get Home" do
    get home_Home_url
    assert_response :success
  end
end
