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


# Achievement.create(complete: false, name: 'ach1')
# Achievement.create(complete: false, name: 'ach2')
# Achievement.create(complete: true, name: 'ach3')
# Achievement.create(complete: false, name: 'ach4')
# Achievement.create(complete: false, name: 'ach5')
# Achievement.create(complete: true, name: 'ach6')
# Achievement.create(complete: false, name: 'ach7')

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

 concept_list = [
 	"1.Uvod u programiranje", 
 	"2.Tipovi podataka", 
 	"3.Kontrola toka", 
 	"4.Polja", 
 	"5.Pokazivači i polja", 
 	"6.Funkcije"
 ]
 concept_list.each do |name|
 	Concept.create(name: name)
 end	

Level.create(concept_id: 1, level_no: 1)
Level.create(concept_id: 1, level_no: 2)
Level.create(concept_id: 1, level_no: 3)

Question.create(level_id: 1, question_text: "Svaki C program mora sadržavati funkciju:")
Question.create(level_id: 1, question_text: "Funkcija main uvijek završava naredbom:")
Question.create(level_id: 1, question_text: "U funkciji main(void), void znači da funkcija prima:")
Question.create(level_id: 1, question_text: "Što od ponuđenog se koristi za komentar:")
Question.create(level_id: 1, question_text: "Koja funkcija se koristi za unos podataka s tipkovnice?")
Question.create(level_id: 1, question_text: "Koja funkcija se koristi za ispis na zaslon?")
Question.create(level_id: 1, question_text: 'Koji format se navodi u funkciji printf( "FORMAT", a ) ako je a cijeli broj?')
Question.create(level_id: 1, question_text: 'Što označava & u funkciji scanf("%d",&a)?')
Question.create(level_id: 2, question_text: 'Koliko decimala će se ispisati iza decimalne točke u funkciji printf("%f", 15.2)? ')
Question.create(level_id: 2, question_text: 'Što će se ispisati na zaslon printf("%f",7.77)?')
Question.create(level_id: 2, question_text: 'U funkciji printf("%7.3f",15.2), "%7.3f" znači:')
Question.create(level_id: 2, question_text: "Što je programiranje?")
Question.create(level_id: 3, question_text: "Ukoliko u C programu želimo koristiti funkcije printf() ili scanf(), koju biblioteku moramo uključiti?")
Question.create(level_id: 3, question_text: "Koliko ima ključnih riječi u programskom jeziku C?")
Question.create(level_id: 3, question_text: "Svaka naredba i deklaracija mora završavati znakom ")
Question.create(level_id: 3, question_text: "Kako se definiraju simboličke konstante?")

Answer.create(question_id: 1, ans: "void()", explanation: "...", correct: false)
Answer.create(question_id: 1, ans: "start()", explanation: "...", correct: false)
Answer.create(question_id: 1, ans: "main()	", explanation: "...", correct: true)
Answer.create(question_id: 1, ans: "glavna()", explanation: "...", correct: false)
Answer.create(question_id: 2, ans: "return", explanation: "...", correct: true)
Answer.create(question_id: 2, ans: "exit", explanation: "...", correct: false)
Answer.create(question_id: 2, ans: "end", explanation: "...", correct: false)
Answer.create(question_id: 2, ans: "stop", explanation: "...", correct: false)
Answer.create(question_id: 3, ans: "jedan argument", explanation: "...", correct: false)
Answer.create(question_id: 3, ans: "dva argumenta", explanation: "...", correct: false)
Answer.create(question_id: 3, ans: "više od dva argumenta", explanation: "...", correct: false)
Answer.create(question_id: 3, ans: "niti jedan argument", explanation: "...", correct: true)
Answer.create(question_id: 4, ans: "{ komentar }", explanation: "...", correct: false)
Answer.create(question_id: 4, ans: "*/ komentar /*", explanation: "...", correct: false)
Answer.create(question_id: 4, ans: "/* komentar */	", explanation: "...", correct: true)
Answer.create(question_id: 4, ans: "[ komnetar ]", explanation: "...", correct: false)
Answer.create(question_id: 5, ans: "printf()", explanation: "...", correct: false)
Answer.create(question_id: 5, ans: "scanf()", explanation: "...", correct: true)
Answer.create(question_id: 5, ans: "print()", explanation: "...", correct: false)
Answer.create(question_id: 5, ans: "scan()", explanation: "...", correct: false)
Answer.create(question_id: 6, ans: "printf()", explanation: "...", correct: true)
Answer.create(question_id: 6, ans: "print()", explanation: "...", correct: false)
Answer.create(question_id: 6, ans: "scanf()", explanation: "...", correct: false)
Answer.create(question_id: 6, ans: "scan()", explanation: "...", correct: false)
Answer.create(question_id: 7, ans: "%d", explanation: "...", correct: true)
Answer.create(question_id: 7, ans: "%f", explanation: "...", correct: false)
Answer.create(question_id: 7, ans: "%c", explanation: "...", correct: false)
Answer.create(question_id: 7, ans: "%x", explanation: "...", correct: false)
Answer.create(question_id: 8, ans: "Varijabla u koju se pohranjuje se zove &a", explanation: "...", correct: false)
Answer.create(question_id: 8, ans: "& je vrijednosni operator", explanation: "...", correct: false)
Answer.create(question_id: 8, ans: "& je adresni operator", explanation: "...", correct: true)
Answer.create(question_id: 8, ans: "Ništa od navedenog", explanation: "...", correct: false)
Answer.create(question_id: 9, ans: "4", explanation: "...", correct: false)
Answer.create(question_id: 9, ans: "5", explanation: "...", correct: false)
Answer.create(question_id: 9, ans: "6", explanation: "...", correct: true)
Answer.create(question_id: 9, ans: "7", explanation: "...", correct: false)
Answer.create(question_id: 10, ans: "7.770000", explanation: "...", correct: true)
Answer.create(question_id: 10, ans: "7.77", explanation: "...", correct: false)
Answer.create(question_id: 10, ans: "8", explanation: "...", correct: false)
Answer.create(question_id: 10, ans: "Ništa od navedenog", explanation: "blabla", correct: false)
Answer.create(question_id: 11, ans: "7 znakova za cjelobrojni dio i 3 iza decimalne točke", explanation: "...", correct: false)
Answer.create(question_id: 11, ans: "7 znakova ukupno, od toga 3 iza decimalne točke", explanation: "...", correct: true)
Answer.create(question_id: 11, ans: "Ispisuje max 7 znakova za cjelobrojni dio i 3 iza decimalne točke", explanation: "...", correct: false)
Answer.create(question_id: 11, ans: "Ispisuje samo brojeve koji imaju 7 znakova, a od toga su 3 iza decimalne točke", explanation: "...", correct: false)
Answer.create(question_id: 12, ans: "Postupak pisanja koda u C programskom jeziku", explanation: "...", correct: false)
Answer.create(question_id: 12, ans: "Postupak pisanja koda u Java programskom jeziku", explanation: "...", correct: false)
Answer.create(question_id: 12, ans: "Postupak pisanja koda u Python programskom jeziku", explanation: "...", correct: false)
Answer.create(question_id: 12, ans: "Ništa od navedenog", explanation: "...", correct: true)
Answer.create(question_id: 13, ans: "stdafx.h", explanation: "...", correct: false)
Answer.create(question_id: 13, ans: "stdio.h", explanation: "...", correct: true)
Answer.create(question_id: 13, ans: "stdlib.h", explanation: "...", correct: false)
Answer.create(question_id: 13, ans: "math.h", explanation: "...", correct: false)
Answer.create(question_id: 14, ans: "0< X <10", explanation: "...", correct: false)
Answer.create(question_id: 14, ans: "10< X <20", explanation: "...", correct: false)
Answer.create(question_id: 14, ans: "20< X <30", explanation: "...", correct: false)
Answer.create(question_id: 14, ans: "30< X <40", explanation: "...", correct: true)
Answer.create(question_id: 15, ans: ".", explanation: "...", correct: false)
Answer.create(question_id: 15, ans: ":", explanation: "...", correct: false)
Answer.create(question_id: 15, ans: ",", explanation: "...", correct: false)
Answer.create(question_id: 15, ans: ";", explanation: "...", correct: true)
Answer.create(question_id: 16, ans: "#define PI = 3.14159", explanation: "...", correct: false)
Answer.create(question_id: 16, ans: "#define PI 3.14159", explanation: "...", correct: true)
Answer.create(question_id: 16, ans: "#define 3.14159 as PI", explanation: "...", correct: false)
Answer.create(question_id: 16, ans: "Ništa od ponuđenog", explanation: "...", correct: false)


Achievement.create(complete: false, name: 'Played the first level!')
Achievement.create(complete: false, name: 'Collected 3 stars on a level')
Achievement.create(complete: false, name: 'Completed a category')

p "Created #{Answer.count}"



































