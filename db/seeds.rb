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

# 4.times do |i|
# 	# fetes = [
# 	# 	"9 Rue Pottier, 78150 Le Chesnay",
# 	# 	"2 rue jeanne d'arc, 75013 Paris",
# 	# 	"28 rue emile zola, 94130 Nogent-sur-Marne",
# 	# 	"118 Avenue du General de Gaulle, 94701 MAISONS ALFORT CEDEX"
# 	# ]

#     Event.create(title:  Faker::GameOfThrones.character  , description:  Faker::ChuckNorris.fact ,  date:   Faker::Date.between(Date.today, 1.year.from_now ) ,
#     time: Faker::Time.forward(23, :morning).strftime("%H:%M"), address: fetes[i] , image_url: "http://via.placeholder.com/200x300",
#     creator_id: 6, created_at: Faker::Date.backward(5), category_id: 2)
# end 

# 4.times do |i|
# 	# spectacles = [
# 	# 	"9 Rue Pottier, 78150 Le Chesnay",
# 	# 	"2 rue jeanne d'arc, 75013 Paris",
# 	# 	"28 rue emile zola, 94130 Nogent-sur-Marne",
# 	# 	"118 Avenue du General de Gaulle, 94701 MAISONS ALFORT CEDEX"
# 	# ]

#     Event.create(title:  Faker::GameOfThrones.character  , description:  Faker::ChuckNorris.fact ,  date:   Faker::Date.between(Date.today, 1.year.from_now ) ,
#     time: Faker::Time.forward(23, :morning).strftime("%H:%M"), address:  spectacles[i] , image_url: "http://via.placeholder.com/200x300",
#     creator_id: 6, created_at: Faker::Date.backward(5), category_id: 3)
# end 

4.times do |i|
	# musique = [
	# 	"9 Rue Pottier, 78150 Le Chesnay",
	# 	"2 rue jeanne d'arc, 75013 Paris",
	# 	"28 rue emile zola, 94130 Nogent-sur-Marne",
	# 	"118 Avenue du General de Gaulle, 94701 MAISONS ALFORT CEDEX"
	# ]

    Event.create(title:  Faker::GameOfThrones.character  , description:  Faker::ChuckNorris.fact ,  date:   Faker::Date.between("16-06-2018".to_date,"17-06-2018".to_date ) ,
    time: Faker::Time.forward(23, :morning).strftime("%H:%M"), address:  musique[i] , imageurl:  "https://source.unsplash.com/random/500x300",
    creator_id: rand(6..9), created_at: Faker::Date.backward(5), category_id: 1)
end 


# # ['Expos', 2],
# # ['Spectacles', 3],
# # ["Sport", 4],
# # ["Loisirs", 5],
# # ["Nature", 6]


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

events = Event.all 
additionnal_text =  "  Il a été popularisé dans les années 1960 grâce à la vente de 
feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment."

events.each do |e|
	e.description = "Le Lorem Ipsum est simplement du faux texte employé 
	dans la composition et la mise en page avant impression. Le Lorem Ipsum
	 est le faux texte standard de l'imprimerie depuis les années 1500, quand un 
	 peintre anonyme assembla ensemble des morceaux de texte pour réaliser un
	 livre spécimen de polices de texte. Il n'a pas fait que survivre cinq siècles, 
	 mais s'est aussi adapté à la bureautique informatique, sans que son contenu 
	 n'en soit modifié. " 
	 e.save
end
