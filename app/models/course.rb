# == Schema Information
#
# Table name: courses
#
#  id            :integer          not null, primary key
#  nome          :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  discipline_id :integer
#

class Course < ActiveRecord::Base
  belongs_to :student
  belongs_to :coordinator
  has_many :classes
end
