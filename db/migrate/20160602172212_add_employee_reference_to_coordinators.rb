class AddEmployeeReferenceToCoordinators < ActiveRecord::Migration
  def change
    add_reference :coordinators, :employee, index: true, foreign_key: true
  end
end
