class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.has_many :employees
      t.has_many :courses
      t.belongs_to :company, index: true, foreign_key: true, null: false
      t.string :city

      t.timestamps null: false
    end
  end
end
