require 'test_helper'
require 'students_controller.rb'

class StudentsController < ApplicationController
  private def logged_in?
    true
  end

  def index
    @user = "teacher"
  end
end

class StudentsControllerTest < ActionController::TestCase
  setup do
    @student = students(:one)
  end
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student" do
    assert_difference('Student.count') do
      post :create, student: { grade: @student.grade, name: @student.name }
    end

    assert_redirected_to student_path(assigns(:student))
  end

  test "should show student" do
    get :show, id: @student
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student
    assert_response :success
  end

  test "should update student" do
    patch :update, id: @student, student: { grade: @student.grade, name: @student.name }
    assert_redirected_to student_path(assigns(:student))
  end

  test "should destroy student" do
    assert_difference('Student.count', -1) do
      delete :destroy, id: @student
    end

    assert_redirected_to students_path
  end
end
