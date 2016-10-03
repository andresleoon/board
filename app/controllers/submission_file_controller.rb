class SubmissionFileController < ApplicationController
  def new
    @submission_file = SubmissionFile.new
    @submission = Submission.find(params[:submission_id])

    if @submission.homework.is_due()
      return redirect_to homework_path(@submission.homework)
    end
  end

  def create
    @submission = Submission.find(params[:submission_id])

    if @submission.homework.is_due()
      return redirect_to homework_path(@submission.homework), notice: 'This homework is due!'
    end

    params[:file].each do |file|
      @submission.submission_files.create(
        file: file
      )
    end

    redirect_to homework_path(@submission.homework), notice: 'The file was saved!'
  end
end
