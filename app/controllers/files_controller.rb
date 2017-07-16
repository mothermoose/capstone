class FilesController < ApplicationController 

def index
  #call google API
  response = service.list_files(page_size: 10)
end 

end
