class AddProfessorReferencesToClasse < ActiveRecord::Migration
  def change
    add_reference :classes, :professor, index: true, foreign_key: true
  end
end
