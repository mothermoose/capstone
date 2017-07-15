class HomeController < ApplicationController

 def index
   if current_student.admin
      redirect_to '/projects'
    else  
      redirect_to '/teams'
    end 

  end
end


