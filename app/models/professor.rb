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
  belongs_to :employee
  has_many :courses
  has_many :classes
end
