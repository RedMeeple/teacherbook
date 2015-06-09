class DashboardController < ApplicationController
  before_action :logged_in?

  private def logged_in?
    unless Teacher.find_by_id(session[:user_id])
      redirect_to sessions_login_path, notice: 'User or Password does not match our records.'
    end
  end

  def index
    @user = Teacher.find_by_id(session[:user_id]).name
  end

end
