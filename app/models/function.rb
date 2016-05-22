# == Schema Information
#
# Table name: functions
#
#  id         :integer          not null, primary key
#  nome       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Function < ActiveRecord::Base
  has_many :employees
end
