class RemoveFieldFromCourse < ActiveRecord::Migration
  def change
    remove_column :courses, :discipline_id, :integer
  end
end
