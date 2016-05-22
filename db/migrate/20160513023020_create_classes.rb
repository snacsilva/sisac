class CreateClasses < ActiveRecord::Migration
  def change
    create_table :classes do |t|
      t.string :codigo
      t.references :course, index: true, foreign_key: true
      t.references :discipline, index: true, foreign_key: true
      t.references :student, index: true, foreign_key: true
      t.integer :num_aluno

      t.timestamps null: false
    end
  end
end
