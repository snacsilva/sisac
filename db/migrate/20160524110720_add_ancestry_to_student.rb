class AddAncestryToStudent < ActiveRecord::Migration
  def change
    add_column :students, :ancestry, :string
    add_index :students, :ancestry

  end
end
