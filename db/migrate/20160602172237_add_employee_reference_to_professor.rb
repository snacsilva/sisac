class AddEmployeeReferenceToProfessor < ActiveRecord::Migration
  def change
    add_reference :professors, :employee, index: true, foreign_key: true
  end
end
