# == Schema Information
#
# Table name: classes
#
#  id            :integer          not null, primary key
#  codigo        :string
#  course_id     :integer
#  discipline_id :integer
#  num_aluno     :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  professor_id  :integer
#

require 'test_helper'

class ClasseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
