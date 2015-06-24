class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.has_many :locations
      t.string :name

      t.timestamps null: false
    end
  end
end
