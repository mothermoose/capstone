class HomeController < ApplicationController

 def index
    if current_student && current_student.admin
      redirect_to '/projects'
    elsif current_student
      redirect_to '/teams'
    else
      redirect_to '/students/sign_in'
    end 
  end 
  
end


