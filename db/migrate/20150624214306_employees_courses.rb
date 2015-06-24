class EmployeesCourses < ActiveRecord::Migration
  def change
    create_table :employees_courses do |t|
      t.belongs_to :employee, index: true, foreign_key: true, null: false
      t.belongs_to :course, index: true, foreign_key: true, null: false
  end
end
