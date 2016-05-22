class AddClasseReferenceToStutent < ActiveRecord::Migration
  def change
    add_reference :students, :classe, index: true, foreign_key: true
  end
end
