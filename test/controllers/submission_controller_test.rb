require 'test_helper'

class SubmissionControllerTest < ActionDispatch::IntegrationTest
  setup do
    @teacher = users(:one)
    student = users(:two)
    @homework = @teacher.homeworks.create(
      title: 'Second homework',
      description: 'Lorem ipsum'
    )
    @submission = @homework.submissions.create(
      user: student
    )

    @file = @submission.submission_files.create(
      file: File.new("#{fixture_path}/files/1x1.jpg"),
    )
  end

  test "should get show" do
    sign_in @teacher
    get submission_path(@submission)
    assert_select '.file-name', @file.file_file_name
  end

end
