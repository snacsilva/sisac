class CreateDisciplines < ActiveRecord::Migration
  def change
    create_table :disciplines do |t|
      t.string :nome

      t.timestamps null: false
    end
  end
end
