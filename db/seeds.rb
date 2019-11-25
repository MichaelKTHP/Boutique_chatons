# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
10.times do |x|
	User.create(
		email: x+"yopmail.com",
		encrypted_password: "azerty")
	puts "User #{x}"

	Item.create(
		title: "Titre de l'item" + x)
	puts "Item #{x}"
end

3.times do |x|
	Cart.create(
       		 user_id: rand(0..10)
		 item_id: rand (0..10))
	puts "Cart #{x}"

	Order.create(
		cart_id: rand(0..3))
	puts "Order #{x}"
end

