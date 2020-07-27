# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Tutor.destroy_all 
Student.destroy_all
Session.destroy_all

Tutor.create(name: 'Adam Johnson', username: "ajohnson", password: "abc", yearsExperience: 5)
Tutor.create(name: 'Belle Clarke', username: "bclarke", password: "abc", yearsExperience: 12)
Tutor.create(name: 'Claire Jenkins', username: "cjenkins", password: "abc", yearsExperience: 3)

Student.create(name: "Ellen Fallon", parentName: "Jack Fallon", parentEmail: "j.fallon@email.com", school: "Great Springs HS")
Student.create(name: "Frank Winston", parentName: "George Winston", parentEmail: "g.winston@email.com", school: "Edison City HS")
Student.create(name: "David Smith", parentName: "Heather Smith", parentEmail: "h.smith@email.com", school: "River Oaks HS")

Session.create(date: "August 08, 2020", preAssessmentCompletionStatus: false, comment: "Hi Mrs. Fallon! Just wanted to let you know that Ellen did a great job at today's session! Let me know when she'd like to start the program! - Adam" )
Session.create(date: "August 08, 2020", preAssessmentCompletionStatus: false, comment: "Hi Mr. Winston! Another really awesome session today with Frank. He asked a lot of questions about career paths he'd like to learn more about! - Adam") 
Session.create(date: "August 15, 2020", preAssessmentCompletionStatus: false, comment: "Hi Mrs. Smith! David asked a ton of questions today - and he's really excited about starting the program! - Claire")