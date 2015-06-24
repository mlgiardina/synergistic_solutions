class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.belongs_to :location, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
