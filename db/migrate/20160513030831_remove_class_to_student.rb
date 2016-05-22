class RemoveClassToStudent < ActiveRecord::Migration
  def change
    remove_column :students, :class, :string
  end
end
