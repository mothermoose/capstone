class ClassAttendencesController < ApplicationController
  
  def index
    @students = current_teacher.students
  end 

end
