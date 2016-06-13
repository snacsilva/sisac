class AddReferencesEmployeeToSector < ActiveRecord::Migration
  def change
    add_reference :sectors, :employee, index: true, foreign_key: true
  end
end
