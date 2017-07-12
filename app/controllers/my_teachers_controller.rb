class MyTeachersController < ApplicationController
  def add_student_form
    @students = Student.all
    @my_students = current_teacher.students
  end

  def add_student
    @student = Student.find(params[:student_id])

    ClassAttendance.create(
                          student_id: @student.id,
                          teacher_id: current_teacher.id
                          )
    redirect_to '/add_student'
  end
end
