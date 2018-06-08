require 'faker'

# 5.times do |nbr|
#     Event.create(title:  Faker::GameOfThrones.character  , description:  Faker::ChuckNorris.fact ,  date:   Faker::Date.between(Date.today, 1.year.from_now ),
#     time: Faker::Time.forward(23, :morning).strftime("%H:%M"), address:  Faker::Address.street_address , image_url: "http://via.placeholder.com/200x300",
#     creator_id: 4,  created_at:Faker::Date.backward(5), )
# end 

# 5.times do |nbr|
#     Event.create(title:  Faker::GameOfThrones.character  , description:  Faker::ChuckNorris.fact ,  date:   Faker::Date.between(Date.today, 1.year.from_now ) ,
#     time: Faker::Time.forward(23, :morning).strftime("%H:%M"),  address:  Faker::Address.street_address , image_url: "http://via.placeholder.com/200x300",
#     creator_id: 5,  created_at:Faker::Date.backward(5))
# end 


5.times do |nbr|
    Event.create(title:  Faker::GameOfThrones.character  , description:  Faker::ChuckNorris.fact ,  date:   Faker::Date.between(Date.today, 1.year.from_now ) ,
    time: Faker::Time.forward(23, :morning).strftime("%H:%M"), address:  Faker::Address.street_address , image_url: "http://via.placeholder.com/200x300",
    creator_id: 6, created_at: Faker::Date.backward(5))
end 

# 6.times do |i|
#     categories = ["Concerts", "Expos", "Spectacles", "Sport", "Loisirs", "Nature"]
#     Category.create(title: categories[i])
# end 



=begin

name:  Faker::Artist.name 
description:  Faker::ChuckNorris.fact   
date:   Faker::Date.between(Date.today, 1.year.from_now ).strftime("%H:%M") 
time: Faker::Time.forward(23, :morning).strftime("%H:%M")
adress :    Faker::Address.street_address 
image_url: "http://via.placeholder.com/350x150"
creator_id: 
=end