require 'faker'

musique = [
	" 118 Avenue du General de Gaulle, 94701 MAISONS ALFORT CEDEX",
	"95 Boulevard de l'oise, 95490 Vauréal",
	"167 rue de praslin, 77950 Rubelles",
	"31 Rue Gabrielle, 75018 Paris"
]

spectacles = [
	"10 Rue Pierre Fontaine, 75009 Paris",
	"1 esplanade de versailles, 93331 NEUILLY SUR MARNE CEDEX",
	"21 avenue louis georgeon, 94230 Cachan",
	"70 Avenue de la Republique, 92320 Châtillon"
]

fetes = [
	"9 Rue Pottier, 78150 Le Chesnay",
	"2 rue jeanne d'arc, 75013 Paris",
	"28 rue emile zola, 94130 Nogent-sur-Marne",
	"118 Avenue du General de Gaulle, 94701 MAISONS ALFORT CEDEX"
]

4.times do |i|
	# fetes = [
	# 	"9 Rue Pottier, 78150 Le Chesnay",
	# 	"2 rue jeanne d'arc, 75013 Paris",
	# 	"28 rue emile zola, 94130 Nogent-sur-Marne",
	# 	"118 Avenue du General de Gaulle, 94701 MAISONS ALFORT CEDEX"
	# ]

    Event.create(title:  Faker::GameOfThrones.character  , description:  Faker::ChuckNorris.fact ,  date:   Faker::Date.between(Date.today, 1.year.from_now ) ,
    time: Faker::Time.forward(23, :morning).strftime("%H:%M"), address: fetes[i] , image_url: "http://via.placeholder.com/200x300",
    creator_id: 6, created_at: Faker::Date.backward(5), category_id: 2)
end 

4.times do |i|
	# spectacles = [
	# 	"9 Rue Pottier, 78150 Le Chesnay",
	# 	"2 rue jeanne d'arc, 75013 Paris",
	# 	"28 rue emile zola, 94130 Nogent-sur-Marne",
	# 	"118 Avenue du General de Gaulle, 94701 MAISONS ALFORT CEDEX"
	# ]

    Event.create(title:  Faker::GameOfThrones.character  , description:  Faker::ChuckNorris.fact ,  date:   Faker::Date.between(Date.today, 1.year.from_now ) ,
    time: Faker::Time.forward(23, :morning).strftime("%H:%M"), address:  spectacles[i] , image_url: "http://via.placeholder.com/200x300",
    creator_id: 6, created_at: Faker::Date.backward(5), category_id: 3)
end 

4.times do |i|
	# musique = [
	# 	"9 Rue Pottier, 78150 Le Chesnay",
	# 	"2 rue jeanne d'arc, 75013 Paris",
	# 	"28 rue emile zola, 94130 Nogent-sur-Marne",
	# 	"118 Avenue du General de Gaulle, 94701 MAISONS ALFORT CEDEX"
	# ]

    Event.create(title:  Faker::GameOfThrones.character  , description:  Faker::ChuckNorris.fact ,  date:   Faker::Date.between(Date.today, 1.year.from_now ) ,
    time: Faker::Time.forward(23, :morning).strftime("%H:%M"), address:  musique[i] , image_url: "http://via.placeholder.com/200x300",
    creator_id: 6, created_at: Faker::Date.backward(5), category_id: 5)
end 


# ['Expos', 2],
# ['Spectacles', 3],
# ["Sport", 4],
# ["Loisirs", 5],
# ["Nature", 6]


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