class ClassAttendance < ApplicationRecord
  belongs_to :student 
  belongs_to :teacher, class_name: "Student"
end
