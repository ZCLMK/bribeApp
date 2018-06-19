require 'faker'

musique = [
	"9 Rue Pottier, 78150 Le Chesnay",
	"2 rue jeanne d'arc, 75013 Paris",
	"28 rue emile zola, 94130 Nogent-sur-Marne",
	"118 Avenue du General de Gaulle, 94701 MAISONS ALFORT CEDEX"
]

categories = [
	'Concerts',
	'Expos',
	'Spectacles',
	"Sport", 
	"Loisirs",
	"Nature" 
	]
	
6.times do |i|
	Category.create(title: categories[i])
end 

80.times do |i|

	users = [
		10,
			5,
			6,
			7,
			4,
			9,
			8,
			11,
			13
]


    Event.create(
		 title: Faker::GameOfThrones.character, 
		 description: "Le Lorem Ipsum est simplement du faux texte employé 
		dans la composition et la mise en page avant impression. Le Lorem Ipsum
		est le faux texte standard de l'imprimerie depuis les années 1500, quand un 
		peintre anonyme assembla ensemble des morceaux de texte pour réaliser un
		livre spécimen de polices de texte. Il n'a pas fait que survivre cinq siècles, 
		mais s'est aussi adapté à la bureautique informatique, sans que son contenu 
		n'en soit modifié. ",
		date: Faker::Date.between("23-06-2018".to_date,"24-06-2018".to_date ) ,
		time: Faker::Time.forward(23, :morning).strftime("%H:%M"),
		address:  musique[rand(3)], 
		creator_id: users[rand(0..users.size)], 
		created_at: Faker::Date.backward(5), 
		image: "fallback/default-img.jpg", 
		category_id: rand(0..5) )
	end 

