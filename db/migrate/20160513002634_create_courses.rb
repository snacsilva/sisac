class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :nome

      t.timestamps null: false
    end
  end
end
