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

 # concept_list = [
 # 	"1.Uvod u programiranje", 
 # 	"2.Tipovi podataka", 
 # 	"3.Kontrola toka", 
 # 	"4.Polja", 
 # 	"5.Pokazivači i polja", 
 # 	"6.Funkcije"
 # ]
 # concept_list.each do |name|
 # 	Concept.create(name: name)
 # end	

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

# Level.create(concept_id: 1, level_no: 1)
# Level.create(concept_id: 1, level_no: 2)

# Question.create(level_id: 1, question_text: "Što od ponuđenog se koristi za komentar1?")
# Question.create(level_id: 1, question_text: "Što od ponuđenog se koristi za komentar2?")
# Question.create(level_id: 1, question_text: "Što od ponuđenog se koristi za komentar3?")
# Question.create(level_id: 1, question_text: "Što od ponuđenog se koristi za komentar4?")
# Question.create(level_id: 2, question_text: "Što od ponuđenog se koristi za komentar5?")
# Question.create(level_id: 2, question_text: "Što od ponuđenog se koristi za komentar6?")
# Question.create(level_id: 2, question_text: "Što od ponuđenog se koristi za komentar7?")
# Question.create(level_id: 2, question_text: "Što od ponuđenog se koristi za komentar8?")



# Answer.create(question_id: 1, ans: "[komentar1]", explanation: "...", correct: false)
# Answer.create(question_id: 1, ans: "[komentar2]", explanation: "...", correct: false)
# Answer.create(question_id: 1, ans: "[komentar3]", explanation: "...", correct: false)
# Answer.create(question_id: 1, ans: "[komentar4]", explanation: "...", correct: true)
# Answer.create(question_id: 2, ans: "[komentar]5", explanation: "...", correct: false)
# Answer.create(question_id: 2, ans: "[komentar6]", explanation: "...", correct: true)
# Answer.create(question_id: 2, ans: "[komentar7]", explanation: "...", correct: false)
# Answer.create(question_id: 2, ans: "[komentar8]", explanation: "...", correct: false)
# Answer.create(question_id: 3, ans: "[komentar9]", explanation: "...", correct: false)
# Answer.create(question_id: 3, ans: "[komentar10]", explanation: "...", correct: false)
# Answer.create(question_id: 3, ans: "[komentar11]", explanation: "...", correct: true)
# Answer.create(question_id: 3, ans: "[komentar12]", explanation: "...", correct: false)
# Answer.create(question_id: 4, ans: "[komentar13]", explanation: "...", correct: false)
# Answer.create(question_id: 4, ans: "[komentar14]", explanation: "...", correct: false)
# Answer.create(question_id: 4, ans: "[komentar15]", explanation: "...", correct: true)
# Answer.create(question_id: 4, ans: "[komentar16]", explanation: "...", correct: false)
# Answer.create(question_id: 5, ans: "[komentar1]", explanation: "...", correct: false)
# Answer.create(question_id: 5, ans: "[komentar2]", explanation: "...", correct: false)
# Answer.create(question_id: 5, ans: "[komentar3]", explanation: "...", correct: false)
# Answer.create(question_id: 5, ans: "[komentar4]", explanation: "...", correct: true)
# Answer.create(question_id: 6, ans: "[komentar]5", explanation: "...", correct: false)
# Answer.create(question_id: 6, ans: "[komentar6]", explanation: "...", correct: true)
# Answer.create(question_id: 6, ans: "[komentar7]", explanation: "...", correct: false)
# Answer.create(question_id: 6, ans: "[komentar8]", explanation: "...", correct: false)
# Answer.create(question_id: 7, ans: "[komentar9]", explanation: "...", correct: false)
# Answer.create(question_id: 7, ans: "[komentar10]", explanation: "...", correct: false)
# Answer.create(question_id: 7, ans: "[komentar11]", explanation: "...", correct: true)
# Answer.create(question_id: 7, ans: "[komentar12]", explanation: "...", correct: false)
# Answer.create(question_id: 8, ans: "[komentar13]", explanation: "...", correct: false)
# Answer.create(question_id: 8, ans: "[komentar14]", explanation: "...", correct: false)
# Answer.create(question_id: 8, ans: "[komentar15]", explanation: "...", correct: true)
# Answer.create(question_id: 8, ans: "[komentar16]", explanation: "...", correct: false)

# p "Created #{Answer.count}"


Achievement.create(complete: false, name: 'ach1')
Achievement.create(complete: false, name: 'ach2')
Achievement.create(complete: true, name: 'ach3')
Achievement.create(complete: false, name: 'ach4')
Achievement.create(complete: false, name: 'ach5')
Achievement.create(complete: true, name: 'ach6')
Achievement.create(complete: false, name: 'ach7')




















