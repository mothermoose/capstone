class ClassAttendencesController < ApplicationController
  
  def index
    if current_teacher
      @students = current_teacher.students
    else 
      flash[:warning] = "You need to sign in to see your Students"
      redirect_to '/teachers/sign_in'
      end 
    end 
  end
