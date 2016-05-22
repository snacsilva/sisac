class AddReferenceDisciplineToCourse < ActiveRecord::Migration
  def change
    add_reference :courses, :discipline, index: true, foreign_key: true
  end
end
