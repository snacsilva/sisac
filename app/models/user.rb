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
  has_one :employee
  has_one :student

  has_secure_password

end
