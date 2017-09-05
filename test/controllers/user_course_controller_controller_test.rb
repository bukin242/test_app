require 'test_helper'

class UserCourseControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get user_course_controller_show_url
    assert_response :success
  end

end
