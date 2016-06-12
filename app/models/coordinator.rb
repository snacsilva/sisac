# == Schema Information
#
# Table name: coordinators
#
#  id          :integer          not null, primary key
#  course_id   :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  employee_id :integer
#

class Coordinator < ActiveRecord::Base
  belongs_to :user
  has_one :course
end
