class RemoveFieldFromDiscipline < ActiveRecord::Migration
  def change
    remove_column :disciplines, :course_id, :integer
  end
end
