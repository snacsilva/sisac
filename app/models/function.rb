# == Schema Information
#
# Table name: functions
#
#  id          :integer          not null, primary key
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  employee_id :integer
#

class Function < ActiveRecord::Base
  has_many :employee
end
