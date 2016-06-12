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

class Classe < ActiveRecord::Base
  belongs_to :course
  belongs_to :discipline
  belongs_to :professor
end
