# == Schema Information
#
# Table name: employees
#
#  id             :integer          not null, primary key
#  function       :integer
#  sector_id      :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  user_id        :integer
#  coordinator_id :integer
#

require 'test_helper'

class EmployeeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
