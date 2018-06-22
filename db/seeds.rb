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
},

 {
	first_name: 'Beyoncé', 
	last_name:  'Knowles',
	linkedin: 'linkedin.com/queen_b',
	email: 'GetInFormation@gmail.com',
	portfolio: 'QueenB.com'
}]



students.each do |s|
	Student.create(s) unless Student.exists?(linkedin: s[:linkedin])
end	