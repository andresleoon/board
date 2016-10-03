require 'test_helper'

class HomeworkControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
    @homework = @user.homeworks.create(
      title: 'Second homework',
      description: 'Lorem ipsum',
      due_date: DateTime.now() + 5
    )
  end

  test "should get show" do
    sign_in @user

    get homework_path(@homework)
    assert_select 'h1', @homework.title
  end

end
