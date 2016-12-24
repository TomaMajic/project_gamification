# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Concept.destroy_all
#Question.destroy_all
#Answer.destroy_all
#Level.destroy_all

#concept_list = [
#	"1.Uvod u programiranje", 
#	"2.Tipovi podataka", 
#	"3.Kontrola toka", 
#	"4.Polja", 
#	"5.Pokazivači i polja", 
#	"6.Funkcije"
#]
#concept_list.each do |name|
#	Concept.create(name: name)
#end	

#answer_list = [
#	["main()", "Bez main() funkcije javlja pogresku"],
#	["return", "Mora vratit nesto"],
#	["niti jedan argument", "blabla"],
#	["/*komentar*/", "..."]
#]

#question_list = [
#	[1, "Svaki C program mora sadržavati funkciju: ", "void()", "start()", "main()", "glavna()"],
#	[2, "Funkcija main uvijek završava naredbom: ", "return", "exit", "end", "stop"],
#	[3, "U funkciji main(void), void znači da funkcija prima: ", "jedan argument", "dva argumenta", "više od dva argumenta", "niti jedan argument"],
#	[4, "Što od ponuđenog se koristi za komentar", "{komentar}", "*/komentar/*", "/*komentar*/", "[komentar]"]
#]

#level_list = [
#	[1, 2, 3, 4, 25, 1]
#]

#answer_list.each do |ans, explanation|
#	Answer.create(ans: ans, explanation: explanation)
#end

#question_list.each do |answer_id, question_text, a1, a2, a3, a4|
#	Question.create(answer_id: answer_id, question_text: question_text, a1: a1, a2: a2, a3: a3, a4: a4)
#end	

#level_list.each do |question_one_id, question_two_id, question_three_id, question_four_id, concept_id, level_no|

#	Level.create(question_one_id: question_one_id, question_two_id: question_two_id, question_three_id: question_three_id, question_four_id: question_four_id, concept_id: concept_id, level_no: level_no)
#end

#Level.create(concept_id: 31, level_no: 1)

#Question.create(level_id: 1, question_text: "Što od ponuđenog se koristi za komentar?")

Answer.create(question_id: 4, ans: "[komentar]", explanation: "...", correct: false)

p "Created #{Answer.count}"