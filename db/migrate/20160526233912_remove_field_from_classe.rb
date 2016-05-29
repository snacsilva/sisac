class RemoveFieldFromClasse < ActiveRecord::Migration
  def change
    remove_column :classes, :student_id, :integer
  end
end
