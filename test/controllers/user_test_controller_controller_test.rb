require 'test_helper'

class UserTestControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get user_test_controller_show_url
    assert_response :success
  end

end
