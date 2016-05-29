class RemoveFieldFromProfessor < ActiveRecord::Migration
  def change
    remove_column :professors, :classe_id, :integer
  end
end
