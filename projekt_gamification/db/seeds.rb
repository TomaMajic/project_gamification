# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

concept_list = [
	["1.Uvod u programiranje"], 
	["2.Tipovi podataka"], 
	["3.Kontrola toka"], 
	["4.Polja"], 
	["5.Pokazivači i polja"], 
	["6.Funkcije"]
]
concept_list.each do |name|
	Concept.create(name: name)
end	

p "Created concepts"