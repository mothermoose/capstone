class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


# def current_teacher
#   @current_teacher ||= Teacher.find_by(id: session[:teacher_id]) if session[:teacher_id]
# end 
 
# def current_student
#   @current_student ||= Student.find_by(id: session[:student_id]) if session[:student_id]
# end 

private

  def authenticate_user!
      redirect_to "/" unless current_user
  end   

  def after_sign_out_path_for(resource_or_scope)
    if resource_or_scope == :student
      new_student_session_path
    elsif resource_or_scope == :teacher
      new_teacher_session_path
    else
      root_path
    end
  end

end