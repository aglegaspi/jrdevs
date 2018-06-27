# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
students = [{
	first_name: 'Will',
	last_name:   'Smith',
	linkedin: 'linkedin.com/will_smith',
	email:  'Phillyswag@gmail.com',
	portfolio: 'FreshPrince.com',

}, {
	first_name: 'Super',
	last_name: 'Mario',
	linkedin: 'linkedin.com/super_mario',
	email: 'MarioBro@gmail.com',
	portfolio: 'ThePrincessIsInAnotherCastle.com'
},  {
	first_name: 'Nelly',
	last_name: 'Furtado',
	linkedin: 'linkedin.com/nelly_furtado',
	email: 'ImLikeABird@gmail.com',
	portfolio: 'IWannaFlyAway.com'
},  {
	first_name: 'Super',
	last_name: 'Mario',
	linkedin: 'linkedin.com/super_mario',
	email: 'MarioBro@gmail.com',
	portfolio: 'ThePrincessIsInAnotherCastle.com'
},  {
	first_name: 'King',
	last_name: 'TChalla',
	linkedin: 'linkedin.com/TChalla',
	email: 'BlackPanther@vmail.com',
	portfolio: 'WakandaForever.com'
},	 {
	first_name: 'Beyoncé',
	last_name:  'Knowles',
	linkedin: 'linkedin.com/queen_b',
	email: 'GetInFormation@gmail.com',
	portfolio: 'QueenB.com'
}]

students.each do |s|
	Student.create(s) unless Student.exists?(linkedin: s[:linkedin])
end


events = [{
	title: 'Software Engineering Intensive Showcase',
	date:   '2018-07-10',
	start_time: '16:00:00',
	end_time:  '18:00:00',
	description: 'Alumni present their Frontend and Backend skills.
	Showcasing their skills in HTML, CSS, JavaScript, jQuery, AJAX, API, Ruby/Ruby on Rails, PostgreSQL,
	UX/UI frameworks such as Bootstrap, SASS, and individually learned languages.',
}, {
	title: 'Software Engineering Intensive Showcase',
	date: '2018-10-31',
	start_time: '16:00:00',
	end_time: '18:00:00',
	description: 'Alumni present their Frontend and Backend skills.
	Showcasing their skills in HTML, CSS, JavaScript, jQuery, AJAX, API, Ruby/Ruby on Rails, PostgreSQL,
	UX/UI frameworks such as Bootstrap, SASS, and individually learned languages.',
},  {
	title: 'Software Engineering Intensive Showcase',
	date: '2019-01-30',
	start_time: '16:00:00',
	end_time: '18:00:00',
	description: 'Alumni present their Frontend and Backend skills.
	Showcasing their skills in HTML, CSS, JavaScript, jQuery, AJAX, API, Ruby/Ruby on Rails, PostgreSQL,
	UX/UI frameworks such as Bootstrap, SASS, and individually learned languages.',
},  {
	title: 'Software Engineering Intensive Showcase',
	date: '2019-02-27',
	start_time: '16:00:00',
	end_time: '18:00:00',
	description: 'Alumni present their Frontend and Backend skills.
	Showcasing their skills in HTML, CSS, JavaScript, jQuery, AJAX, API, Ruby/Ruby on Rails, PostgreSQL,
	UX/UI frameworks such as Bootstrap, SASS, and individually learned languages.',
},  {
	title: 'Software Engineering Intensive Showcase',
	date: '2018-10-04',
	start_time: '16:00:00',
	end_time: '18:00:00',
	description: 'Alumni present their Frontend and Backend skills.
	Showcasing their skills in HTML, CSS, JavaScript, jQuery, AJAX, API, Ruby/Ruby on Rails, PostgreSQL,
	UX/UI frameworks such as Bootstrap, SASS, and individually learned languages.',
},	{
	title: 'Web Development Fellowship Showcase',
	date:  '2018-09-26',
	start_time: '16:00:00',
	end_time: '18:00:00',
	description: 'Alumni present their Frontend and Backend skills.
	Showcasing their skills in HTML, CSS, JavaScript, jQuery, AJAX, API, Ruby/Ruby on Rails, PostgreSQL,
	UX/UI frameworks such as Bootstrap, SASS, and individually learned languages.',
},
{
	title: 'Badruduja Press',
	date:  '2018-09-27',
	start_time: '16:00:00',
	end_time: '18:00:00',
	description: 'HTML, CSS',
},
{
	title: 'BDB Press',
	date:  '2018-09-27',
	start_time: '16:00:00',
	end_time: '18:00:00',
	description: 'HTML, CSS',
}

]

events.each do |s|
	Event.create(s) unless Event.exists?(date: s[:date])
end



guests = [{
	first_name: 'Timothy',
	last_name:   'Donald Cook',
	company: 'Apple',
	company_website:  'https://www.apple.com/',
	email: 'tcook@apple.com',
	linkedin: 'https://www.linkedin.com/in/timothygcook/'
},
{
 first_name: 'Badruduja',
 last_name:   'Bhuiya',
 company: 'NYCDA Student',
 company_website:  'https://nycda.com/',
 email: 'badru@gmail.com',
 linkedin: 'https://www.linkedin.com/in/b-bhuiya/'
},
{
 first_name: 'George ',
 last_name:   'Dagher',
 company: 'NYCDA',
 company_website:  'https://nycda.com/',
 email: 'george@nycda.com',
 linkedin: 'https://www.linkedin.com/in/george-dagher-5b4a8811/'
},
{
 first_name: 'Meg',
 last_name:   'Whitman',
 company: 'HP Enterprise',
 company_website:  'www.hp.com',
 email: 'whitman@hp.com',
 linkedin: 'https://www.linkedin.com/in/megwhitman/'
},
{
 first_name: 'Bill',
 last_name:   'Gates',
 company: 'Microsoft',
 company_website:  'https://www.microsoft.com/en-us/',
 email: 'billg@microsoft.com',
 linkedin: 'https://www.linkedin.com/in/williamhgates/'
}

]

guests.each do |s|
	Guest.create(s) unless Guest.exists?(email: s[:email])
end
