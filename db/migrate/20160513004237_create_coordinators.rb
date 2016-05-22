class CreateCoordinators < ActiveRecord::Migration
  def change
    create_table :coordinators do |t|
      t.references :course, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
