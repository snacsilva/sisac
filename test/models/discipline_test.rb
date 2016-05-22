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

require 'test_helper'

class DisciplineTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
