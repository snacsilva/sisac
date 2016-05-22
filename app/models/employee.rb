# == Schema Information
#
# Table name: employees
#
#  id          :integer          not null, primary key
#  function_id :integer
#  sector_id   :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Employee < ActiveRecord::Base
  belongs_to :user
  has_one :coordinator
  has_one :professor

  has_one :function
  has_many :sectors
end
