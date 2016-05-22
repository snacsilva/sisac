# == Schema Information
#
# Table name: students
#
#  id         :integer          not null, primary key
#  course_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  classe_id  :integer
#

class Student < ActiveRecord::Base
  belongs_to :user
  has_one :course
  has_many :classes

  accepts_nested_attributes_for :user, allow_destroy: true
end
