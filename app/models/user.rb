# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string
#  data_nascimento :date
#  num_identidade  :string
#  cpf             :string
#  cidade          :string
#  estado          :string
#  telefone        :string
#  celular         :string
#  email           :string
#  login           :string
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  has_one :coordinator
  has_one :student

  has_secure_password

  validates_presence_of :name, :data_nascimento,:num_identidade, :cpf, :cidade,
                        :estado, :email,:login

  validates_numericality_of :cpf, :num_identidade, :telefone, :celular

  validates_uniqueness_of :num_identidade, :cpf, :email, :login



end
