class CreateProfessors < ActiveRecord::Migration
  def change
    create_table :professors do |t|
      t.references :course, index: true, foreign_key: true
      t.references :classe, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
