class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.belongs_to :title, null: false, foreign_key: true
      t.belongs_to :department, null: false, foreign_key: true
      t.belongs_to :location, null: false, foreign_key: true
      # t.references :manager, null: true 
      t.integer :manager_id, null: true 
      t.timestamps
    end
  end
end
