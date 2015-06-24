class Employee < ActiveRecord::Base
  belongs_to :location
  belongs_to :company
  has_many :courses, through: :employees_courses
  has_many :employees_courses
end
