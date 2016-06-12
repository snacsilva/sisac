# == Schema Information
#
# Table name: courses
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  student_id :integer
#

class Course < ActiveRecord::Base
  has_many :students
  belongs_to :coordinator
  has_many :classes
end
