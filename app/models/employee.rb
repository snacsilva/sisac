# == Schema Information
#
# Table name: employees
#
#  id             :integer          not null, primary key
#  function       :integer          default(0)
#  sector_id      :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  user_id        :integer
#  coordinator_id :integer
#

class Employee < ActiveRecord::Base

  belongs_to :user
  belongs_to :sector
  accepts_nested_attributes_for :user


  enum function: {:Atendente => 1, :Coordenador => 2, :Professor => 3}

  validates_inclusion_of :function, in: Employee.functions.keys

end
