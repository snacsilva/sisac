class AddCoordinatorToEmployee < ActiveRecord::Migration
  def change
    add_reference :employees, :coordinator, index: true, foreign_key: true
  end
end
