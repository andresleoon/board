require 'test_helper'

class SubmissionFileControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
    @student = users(:two)
    @homework = @user.homeworks.create(
      title: 'Third homework',
      description: 'Lorem ipsum',
      due_date: DateTime.now() + 5
    )

    @assignment = @homework.assignments.create(
      user: @student,
    )

    @submission = Submission.where(
      user: @student,
      homework: @homework
    ).first
  end

  test "should get new" do
    sign_in @student
    get new_submission_submission_file_path(@submission)
    assert_response :success
  end

  test "should not upload file as it is due" do
    sign_in @student

    post submission_submission_file_index_path(@submission), params: {
      file: [
        fixture_file_upload("#{fixture_path}/files/1x1.jpg", 'image/jpeg', :binary)
      ],
    }

    assert_redirected_to homework_path(@homework)
  end

end
