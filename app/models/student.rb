class Student < ApplicationRecord
  has_secure_password
  
  has_many :class_attendances
  has_many :teachers, through: :class_attendances 
  has_many :student_teams
  has_many :teams, through: :student_teams
end
