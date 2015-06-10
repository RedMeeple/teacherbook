class DashboardController < ApplicationController
  before_action :logged_in?

  private def logged_in?
    unless Teacher.find_by_id(session[:user_id])
      redirect_to sessions_login_path, notice: 'User or Password does not match our records.'
    end
  end

  def index
    @user = Teacher.find_by_id(session[:user_id])
  end

  def edit
    @user = Teacher.find_by_id(session[:user_id])
  end

  def update
    @user = Teacher.new(teacher_params)
    teacher = Teacher.find(session[:user_id])
    if teacher && teacher.authenticate(params[:old_password])
      if params[:password] == params[:password_confirmation]
        teacher.password = params[:password_confirmation]
        respond_to do |format|
          format.html { redirect_to root_path, notice: 'Password was successfully updated.' }
          format.json { render :show, status: :ok, location: @user }
        end
      end
    else
      redirect_to edit_dashboard_path, notice: 'Try again'
    end
  end

  private def teacher_params
    params.require(:teacher).permit(:password, :email)
  end

end
