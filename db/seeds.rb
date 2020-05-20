# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Booking.destroy_all
Yacht.destroy_all
User.destroy_all

locations = ["London","Barbados","Monaco","Cote d'Azur","Marrakesh","Saint Tropez","Sardinia","Tuscany","Florence","Naples"]
User.create(email: "a@a.com", password: "123456")


["Octopus","Luminosity","Barbara","Sunrays","Secret","Lucky Lady","Paraffin","Olivia","Elysian","Blue Eyes London"].each_with_index do |name, index|
  Yacht.create(name: name, user: User.first, location:locations[index])
end
