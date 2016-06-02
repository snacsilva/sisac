# == Schema Information
#
# Table name: students
#
#  id         :integer          not null, primary key
#  course_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  classe_id  :integer
#  user_id    :integer
#

class Student < ActiveRecord::Base
  belongs_to :user
  belongs_to :course

  accepts_nested_attributes_for :user

end
