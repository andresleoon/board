class SubmissionFileController < ApplicationController
  def new
    @submission_file = SubmissionFile.new
    @submission = Submission.find(params[:submission_id])
  end

  def create
    @submission = Submission.find(params[:submission_id])
    params[:file].each do |file|
      @submission.submission_files.create(
        file: file
      )
    end

    redirect_to homework_path(@submission.homework), notice: 'The file was saved!'
  end
end
