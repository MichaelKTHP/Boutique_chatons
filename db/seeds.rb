# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
p "########################"
p "destroy all"
User.destroy_all
p  "All user has destroy"
Cart.destroy_all
p "All cart are destroy"
CartItem.destroy_all
p "All Cart Item has destroy"
Item.destroy_all
p "All items has destroy"
Order.destroy_all
p "All orders has destroy"
p "########################"

10.times do |x|
	User.create!(
		email: "#{x}+yopmail.com",
		encrypted_password: "azerty")
end

p "The database has now #{User.count} users"

10.times do |x|
	Item.create!(
		title: "Titre de l'item #{x}",
		price: Faker::Commerce.price)
end

p "The database has now #{Item.count} items"

3.times do |x|
	Cart.create!(
		user_id: rand(0..10),
		item_id: rand(0..10))
end

p "The database has now #{Cart.count} carts"

3.times do |x|
	Order.create(
		cart_id: rand(0..3))
end

p "The database has now #{Order.count} orders"

p "########################"
p ""
p "THE SEED IS END"


