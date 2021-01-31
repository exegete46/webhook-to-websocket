require "test_helper"

class HooksControllerTest < ActionDispatch::IntegrationTest
  test "should get get" do
    get hooks_get_url
    assert_response :success
  end

  test "should get post" do
    get hooks_post_url
    assert_response :success
  end
end
