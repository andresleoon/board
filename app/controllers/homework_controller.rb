class HomeworkController < ApplicationController
  def show
    @homework = Homework.find(params[:id])
  end

  def create
  end
end
