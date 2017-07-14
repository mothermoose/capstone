class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
 

private

  def authenticate_user!
      redirect_to "/" unless current_user
  end   

  def after_sign_out_path_for(resource_or_scope)
    if resource_or_scope == :student
      new_student_session_path
    else
      root_path
    end
  end

end