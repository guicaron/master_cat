# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "creating seed"
u1 = User.new(email: 'blabla@blabla.fr', password: "azerty")
u2 = User.new(email: 'blabla2@blabla.fr', password: "azerty")
u3 = User.new(email: 'blabla3@blabla.fr', password: "azerty")
u4 = User.new(email: 'blabla4@blabla.fr', password: "azerty")
u1.save
u2.save
u3.save
u4.save
c1 = Chef.new(cat_name: 'Billy', speciality: 'French', price: 45, user_id: 1)
c2 = Chef.new(cat_name: 'Bob', speciality: 'Italian', price: 50, user_id: 2)
c3 = Chef.new(cat_name: 'Sally', speciality: 'Italian', price: 50, user_id: 3)
c4 = Chef.new(cat_name: 'Johnny', speciality: 'French', price: 45, user_id: 4)
c1.save
c2.save
c3.save
c4.save
puts " Seed ok"
