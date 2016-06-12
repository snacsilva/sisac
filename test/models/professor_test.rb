# == Schema Information
#
# Table name: professors
#
#  id          :integer          not null, primary key
#  course_id   :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  employee_id :integer
#

require 'test_helper'

class ProfessorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
