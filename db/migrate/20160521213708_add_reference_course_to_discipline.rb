class AddReferenceCourseToDiscipline < ActiveRecord::Migration
  def change
    add_reference :disciplines, :course, index: true, foreign_key: true
  end
end
