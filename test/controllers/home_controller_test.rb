require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    sign_in @user
    get root_path

    student = users(:two)
    homework = homeworks(:one)
    homework.assignments.create(user: student)

    assert_response :success
    assert_select 'h5', homework.title
    assert_select 'h5 span', homework.assignments.count
  end

end
