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

class Employee < ActiveRecord::Base

  belongs_to :user
  # belongs_to :coordinator
  # has_one :professor

  belongs_to :sector


  accepts_nested_attributes_for :user
  # accepts_nested_attributes_for :professor

  enum function: {:atendente => 1, :coordenador => 2, :professor => 3}

  validates_inclusion_of :function, in: Employee.functions.keys

end
