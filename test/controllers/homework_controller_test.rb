require 'test_helper'

class HomeworkControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get homework_show_url
    assert_response :success
  end

  test "should get create" do
    get homework_create_url
    assert_response :success
  end

end
