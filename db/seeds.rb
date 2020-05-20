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
crews = [true,false,true,false,true,false,true,false,true,false]
capacities = [23,45,65,34,56,98,67,87,69,67]
prices = [1000000,500000,400000,1500000,30000,48000,380000,900000,870000, 230000]
User.create(email: "a@a.com", password: "123456")


["Octopus","Luminosity","Barbara","Sunrays","Secret","Lucky Lady","Paraffin","Olivia","Elysian","Blue Eyes London"].each_with_index do |name, index|
  Yacht.create(name: name, user: User.first, location:locations[index], crew:crews[index], capacity:capacities[index], price:prices[index])
end
