class RemoveAncestryFromStudent < ActiveRecord::Migration
  def change
    remove_column :students, :ancestry, :varchar
  end
end
