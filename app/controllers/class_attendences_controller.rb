class ClassAttendencesController < ApplicationController
  
  def index
    if current_student.admin?
      @students = current_student.admin.students
    else 
      flash[:warning] = "You need to sign in to see your Students"
      redirect_to '/students/sign_in'
      end 
    end 
  end
