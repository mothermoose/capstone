class Teacher < ApplicationRecord
  has_secure_password
  has_many :class_attendances
  has_many :students, through: :class_attendances
end
