# frozen_string_literal: true

require 'faker'

# creamos 10 viajeros
10.times do
  Member.create(
    name: Faker::Name.first_name,
    email: Faker::Internet.email,
    password: 'mydigitaltour',
    travel_updates: 0,
    travel_contract: 0
  )
end

# creamos 10 guias
10.times do
  Member.create(
    name: Faker::Name.first_name,
    email: Faker::Internet.email,
    role: 'guia',
    password: 'mydigitaltour',
    travel_updates: 0,
    travel_contract: 0
  )
end

# Admin
Member.create(
  name: 'Elena',
  email: 'elenagutierrezrioperez@gmail.com',
  role: 'admin',
  password: 'mydigitaltour',
  travel_updates: 0,
  travel_contract: 0
)
Member.create(
  name: 'Nuria',
  email: 'nuriagutierrezrioperez@gmail.com',
  role: 'admin',
  password: 'mydigitaltour',
  travel_updates: 0,
  travel_contract: 0
)
Member.create(
  name: 'Admin',
  email: 'admin@admin.com',
  role: 'admin',
  password: 'admin123',
)


puts 'Se termino la carga con exito'
