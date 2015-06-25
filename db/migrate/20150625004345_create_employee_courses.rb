class CreateEmployeeCourses < ActiveRecord::Migration
  def change
    create_table :employee_courses do |t|
      t.belongs_to :employee, index: true, foreign_key: true, null: false
      t.belongs_to :course, index: true, foreign_key: true, null: false
      t.timestamps null: false
    end
  end
end
