class HomeworkController < ApplicationController
  def show
    @homework = Homework.find(params[:id])

    if current_user.is_student
      @submission = current_user.submissions.where(homework: @homework).first
    end

  end
end
