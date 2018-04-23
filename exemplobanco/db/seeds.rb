# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |i|
    customer_name = Faker::Name.name
	customer_email = Faker::Internet.email
    puts "Cadastrando #{customer_name}"
    Customer.create(name: "Customer - customer_name", 
       	email: "customer_email", 
       	birthday: Date.today, 
       	obs:"bladsdas")
end
