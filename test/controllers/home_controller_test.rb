require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    sign_in @user

    # No homeworks.
    get root_path
    assert_select 'h2', 'You have no homeworks'

    student = users(:two)
    @user.homeworks.create(
      title: 'First homework',
      description: 'Lorem ipsum'
    )
    @user.homeworks.first.assignments.create(user: student)

    # One homework in template.
    get root_path
    assert_select 'h4', @user.homeworks.first.title
  end

end
