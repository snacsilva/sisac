# == Schema Information
#
# Table name: disciplines
#
#  id         :integer          not null, primary key
#  nome       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  course_id  :integer
#

class Discipline < ActiveRecord::Base
  has_many :courses
end
