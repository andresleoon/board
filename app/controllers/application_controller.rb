class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  # Validate user is logged in.
  before_action :authenticate_user!

end
