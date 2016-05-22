class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.references :function, index: true, foreign_key: true
      t.references :sector, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
