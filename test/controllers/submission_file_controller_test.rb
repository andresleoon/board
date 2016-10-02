require 'test_helper'

class SubmissionFileControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
    student = users(:two)
    @homework = @user.homeworks.create(
      title: 'Third homework',
      description: 'Lorem ipsum'
    )
    @submission = @homework.submissions.create(
      user: student
    )
  end


  test "should get new" do
    sign_in @user
    get new_submission_submission_file_path(@submission)
    assert_response :success
  end
end
