# == Schema Information
#
# Table name: coordinators
#
#  id         :integer          not null, primary key
#  course_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Coordinator < ActiveRecord::Base
  belongs_to :employee
  has_many :course
end
