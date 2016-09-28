class HomeController < ApplicationController
  def index

    if current_user.is_teacher
      return render :index_teacher
    end

    render :index_student
  end

  def index_student
  end

  def index_teacher
  end

end
