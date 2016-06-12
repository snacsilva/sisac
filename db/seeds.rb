# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin = User.create([name: 'Admin', login: 'admin', password_digest: 'Adm1n1s7r@dor' ])
Function.create(name:'Professor')
Function.create(name:'Coordenador')
Function.create(name:'Atendente')
