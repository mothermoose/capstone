class ClassAttendencesController < ApplicationController
  
  def index
    if current_teacher
      @students = current_teacher.students
    else 
      flash[:warning] = "You need to sign in to see your Students"
      redirect_to '/teacher_login'
      end 
    end 
  end
