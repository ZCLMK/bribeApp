# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
4.times do 
    Event.create!(title: Faker::Job.field, description: 'description here ' , address: Faker::Address.full_address, date: DateTime.new(2018, rand(12), rand(28), rand(23), rand(0...60), rand(0...60)), creator_id: 4)
end
