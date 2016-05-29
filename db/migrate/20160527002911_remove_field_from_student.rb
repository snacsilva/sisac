class RemoveFieldFromStudent < ActiveRecord::Migration
  def change
    remove_column :students, :course_id, :integer
  end
end
