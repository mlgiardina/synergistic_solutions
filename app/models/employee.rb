class Employee < ActiveRecord::Base
  belongs_to :location
  has_many :courses, through: :employees_courses
  has_many :employees_courses
end
