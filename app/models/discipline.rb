# == Schema Information
#
# Table name: disciplines
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Discipline < ActiveRecord::Base
  has_many :classes
end
