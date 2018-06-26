require 'faker'

=begin
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


categories = [
	'Concerts',
	'Expos',
	'Spectacles',
	"Sport", 
	"Loisirs",
	"Nature" 
	]
	
users = [14,15,16,17,8,18,19,4,20,21,22,9,23,3,10,11,12,13,24,25]



		
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
			]


6.times do |i|
	Category.create(title: categories[i])
end 


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


activites = [ #46
	
	"Initiation à la plongée",
	"Qi Gong pour petits et grands",
	"randonnée à poney",
	"Paintball", 
	"Jeux de cartes", 
	"Contes et Légendes de Dordogne", 
	"Contes et Légendes traditionnels", 
	"Atelier bricolage et recyclage",
	"Sensibilisation aux recyclage", 
	"Balade en forêt",
	"Cueillette aux champignons",
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
	
		cats = [2, 3, 5, 6]
=end 

	
Event.each do |e|

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


