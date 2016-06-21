# == Schema Information
#
# Table name: professors
#
#  id          :integer          not null, primary key
#  course_id   :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  employee_id :integer
#

class Professor < ActiveRecord::Base
  belongs_to :curso
  belongs_to :employee
  has_many :classes
  accepts_nested_attributes_for :employee
end
