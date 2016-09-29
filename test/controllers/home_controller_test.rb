require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    sign_in @user

    student = users(:two)
    @user.homeworks.create(
      title: 'First homework',
      description: 'Lorem ipsum'
    )
    @user.homeworks.first.assignments.create(user: student)

    get root_path
    assert_response :success
    assert_select 'h5', @user.homeworks.first.title
  end

end
