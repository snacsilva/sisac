class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.date :data_nascimento
      t.string :num_identidade
      t.string :cpf
      t.string :cidade
      t.string :estado
      t.string :telefone
      t.string :celular
      t.string :email
      t.string :login
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
