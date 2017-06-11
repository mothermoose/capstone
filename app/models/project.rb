class Project < ApplicationRecord
  belongs_to :teacher
  has_many :tasks
  has_many :teams
end
