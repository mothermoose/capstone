class Teacher < ApplicationRecord
  has_many :class_attendances
  has_many :students, through: :class_attendances
end
