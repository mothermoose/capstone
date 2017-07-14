class Project < ApplicationRecord
  belongs_to :student
  has_many :tasks
  has_many :teams
end
