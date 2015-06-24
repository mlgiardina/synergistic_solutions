class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :full_name
      t.string :title
      t.belongs_to :location, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
