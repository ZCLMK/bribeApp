require 'faker'


adresses = [
"place marc sangnier, 95500 Gonesse",
"1 Rue Albert Doyen, 94000 Créteil",
"30 place du 30 aout, 95550 Bessancourt",
"317 Boulevard de la Boissiere, 93110 Rosny-sous-Bois",
"86 Rue Yves Le Coz, 78000 Versailles",
"75 Allee des Resedas, 78540 Vernouillet",
"17 Place Marc Sangnier, 95500 Gonesse",
"1 Rue de Gascogne, 95200 Sarcelles",
"67 Rue Felix Merlin, 93800 Epinay-sur-Seine",
"4 Avenue Leon Blum, 93800 Epinay-sur-Seine",
"17 Place Marc Sangnier, 95500 Gonesse",
"75 Allee des Resedas, 78540 Vernouillet",
"17 Allee des Eguerets, 95280 Jouy-le-Moutier",
'80 Rue du 11 Novembre 1918, 94700 Maisons-Alfort',
'40 Avenue des Cosmonautes, 91120 Palaiseau',
'9 Rue du Chateau, 77650 Soisy-Bouy',
'4 Rue du Chateau, 77515 Pommeuse',
'25 Rue des Annonciades, 78250 Meulan',
'55 b rue de provins, 77560 Villiers-Saint-Georges',
'7 avenue de montmirail, 77260 La Ferté-sous-Jouarre'
]


=begin
	
	5.times do |i|
		Category.create(id: i+1, title: categories[i])
	end 
=end 


		
sports = [ #19
		"Foot entre potes",
		"Basket confirmé et initiation",
		"Cours de boxe",
		"Séance de handball",
		"Athlétisme en fête",
		"Jubilé de l'AS foot-sur-orge",
		"Course de relais amateur improvisé",
		"Initiation à l'ultimate",
		"Ballon prisonnier encadré par la mairie",
		"Initiation au waterpolo",
		"Curling sur lac",
		"Concours de lancé de poids niveau inter-cantonal",
		"Concours de Gobage de flancs vanille",
		"Championnat de france de marelle poids lourds",
		"Equiation: concours de dressage",
		"Crossfit en folie",
		"Initiation à l'aviron",
		"Concours de saut à l'élastique",
		"Course de charette",
		"Championnat du monde de dépoussiérage",
		"Meeting de lancé d'orange sanguine",
		"Combat mi-lourd Victor Tatête contre Jim Al",
		"Touch Rugby"
		]
			
concerts = [ #17
		"concert de hip hop", 
		"concert de clarinette",
		"concert de la fanfare des fanfarons",
		"Hardcore psychedelic punk rock",
		"Pogo pour Pogoter",
		"Orchestre de cuivres du la fleur d'argent",
		"L'homme Orchestre en concert",
		"Dédé reprends Aznav",
		"Zouk Love Passion",
		"Récital de clavecin",
		"Concert de musique du monde et d'ailleurs",
		"Concert de percussions du maghred",
		"Janot reprends les Eagles",
		"Récital de Pipeau de Manuel Valls",
		"Les NRV",
		"Jazz Vocal - Trio Delicuencia",
		"Chorale La voix de la vérité"
		]

loisirs = [ #46
	
	"Initiation à la plongée",
	"Qi Gong pour petits et grands",
	"randonnée à poney",
	"Paintball", 
	"Jeux de cartes", 
	"Contes et Légendes de Dordogne", 
	"Contes et Légendes traditionnels", 
	"Atelier bricolage et recyclage",
	"Initiation à la poterie",
	"Atelier couture",
	"Atelier ticot", 
	"Découverte de la capoeira", 
	"Cours de danse de salon",
	"Yoga",
	'Dégustation de vins artisanaux',
	'Comment brasser sa propre bière',
	'Décoration intérieure, concepts',
	'Kendo : venez découvrir un art martial ancestral',
	"Canne de Combat amateur",
	"Construction d'un cabane en bois",
	"Atelier de réparation ambulant",
	"Découvrez le cirque",
	"Marche silencieuse, relaxation",
	"Jogging solidaire",
	"Brocante géante",
	"Marché aux puces",
	"Spectacle de marionnettes",
	"Les fourberies de Scapin",
	"Matchs d'improvisation à 2 vs 2",
	"Prise de parole en public",
	"Atelier: Trouvez un emploi en île de france",
	"Comprendre les impôts",
	"Découverte de la psychanalyse",
	"Débat: l'éducation au 21e sièce",
	"Anniversaire de l'école d'aviron de Grigny",
	"Jeux de pistes: découvrir le loiret",
	"Je découvre le cricket",
	"Découverte des animaux de la forêt",
	"Compètition de breakdance",
	"Atelier grafitti",
	"Apprendre le code",
	"Conférence: les méttiers à l'horizon 2030",
	"Débat, comment mobiliser les français",
	]
	
nature = [#19
	"Sensibilisation aux recyclage", 
	"Balade en forêt",
	"Cueillette aux champignons",
	"Les oiseaux d'Ile de France",
	"Randonnée à fontainebleau",
	"De lardy à Etampes",
	"Les trois pignons, par Cecile et Laurent",
	"De Malesherbes à Boutigny",
	"A pied Entre l'Orge et la Renarde",
	" Le Viaduc des Fauvettes et la Forêt de Gif-sur-Yvette",
	"Bazoches-sur-Guyonne - Les Mesnuls - Montfort-Lamaury ",
	"Le Sentier des Belvédères ",
	"La Forêt de la Madeleine et l'Abbaye de Port-Royal-des-Champs",
	"Les Coteaux de la Juine ",
	"La Roche-Guyon: le château, la forêt, les falaises à silex ",
	" La Fontaine Sainte-Anne ",
	"A pied Les Etangs du Grand Voyeux et les Trois Rivières ",
	"La Forêt de Carnelle à partir de Viarmes",
	"La Vallée de l'Oise des peintres paysagistes"]
	
spectacles = [#24
	"Les fourberies de Scapin",
	"Saigon de Jean Bikutsi",
	'Sliders mondes parallèles',
	"Un coquelicot fleurit quand il l'entend",
	"Entrer dans la légende, Agnès Tountoun",
	"Flotte petit bateau qui flotte, Alfred Trophret",
	"Les femmes viennent de Vénus, les hommes aiment le foot",
	"Pied joints dans la merde de Jack Bauer",
	"Des Carnicoles au atomivores",
	"La lutte, Jean Malet",
	"Le père n'a plus toute sa tête, Khalil de la Fontaine",
	'Scène et sang, la vieillesse au théatre', 
	"Le rôle des aisselles à l'heure du convexe de Peter Pan", 
	"Les chats ont-il un maître?",
	"Pause, Jeanne Aquilani",
	"Le temps qu'il fera demain, Fred Tocard",
	"C'est la télé qui l'a dit, Gina Béresina",
	'Petit bateau, Sandra Ciruline',
	"C'est la mer noire?, Jean de la Fontaine de Chocolat",
	"Qui a tué Oui Oui? de Caroline Latrolingileinal",
	"La Vallée de l'Oise des peintres paysagistes ",
	"En Forêt de Verrières et le long de la Bièvre",
	"La Mare aux Fées, la Malmontagne, le Carrosse et la Grotte Béatrix",
	"Entre l'Orge et la Renarde"
	]
	
	text = "Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant
	impression. Le Lorem Ipsum est le faux texte standard de l'imprimerie depuis les années 1500,
	quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen
	de polices de texte."


=begin
 Event(id: integer, title: string, description: text, address: string, date: datetime, creator_id: integer,
 created_at: datetime, updated_at: datetime, time: text, category_id: integer, image: string)

=end

categories =
[
	'Concerts',
	'Spectacles',
	"Sport", 
	"Loisirs",
	"Nature" 
	]

concerts.each do |c|
	Event.create(title: c, description: text, address: adresses[rand(0..adresses.size)], date: Faker::Date.forward(30),
	creator_id: rand(1...4), time: Faker::Time.forward(30, :evening), category_id: 1)
end 

spectacles.each do |c|
	Event.create(title: c, description: text, address: adresses[rand(0..adresses.size)], date: Faker::Date.forward(30),
	creator_id: rand(1...4), time: Faker::Time.forward(30, :evening), category_id: 2)
end 

sports.each do |c|
	Event.create(title: c, description: text, address: adresses[rand(0..adresses.size)], date: Faker::Date.forward(30),
	creator_id: rand(1...4), time: Faker::Time.forward(30, :evening), category_id: 3)
end 

loisirs.each do |c|
	Event.create(title: c, description: text, address: adresses[rand(0..adresses.size)], date: Faker::Date.forward(30),
	creator_id: rand(1...4), time: Faker::Time.forward(30, :evening), category_id: 4)
end 

nature.each do |c|
	Event.create(title: c, description: text, address: adresses[rand(0..adresses.size)], date: Faker::Date.forward(30),
	creator_id: rand(1...4), time: Faker::Time.forward(30, :evening), category_id: 5)
end 

#A utiliser dans la console. (définir evts d'abor

evts = Event.all 
evts.each do |e|

	mytime = Faker::Time.forward(23, :afternoon).strftime("%H:%M")
	minutes_str = mytime[3,4].to_i
	
	
	if minutes_str >= 0 && minutes_str < 15
		minutes_rounded = '00'
		elsif minutes_str >= 15 && minutes_str < 30
		minutes_rounded = '15'
		elsif minutes_str >= 30 && minutes_str < 45
		minutes_rounded =  '30' 
		elsif minutes_str >= 45 && minutes_str <=59
		minutes_rounded = '45'
	end
	
	mytime[3,4] = minutes_rounded
		
		e.time = mytime 
		e.save
end 

# inscrire tout monde aux évenements de tout le monde.