# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
10.times do
  docteur = Doctor.create(firt_name: Faker::Name.first_name, last_name: Faker::Name.last_name, speciality: Faker::Simpsons.character, postal_code: Faker::Address.postcode)
end
10.times do
  patient = Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end
10.times do
  appoitment = Appoitment.create(date: Faker::Time.forward(23, :morning), doctor_id: rand(1..10), patient_id: rand(1..10))
end
