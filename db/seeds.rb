# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

shoes = Product.create!(name:"Nike Air Jordan off white", description: "The OFF WHITE Air Jordan 1 is a special edition collaboration between designer Virgil Abloh’s Italian fashion label OFF WHITE and Jordan Brand. So far, three colorways have released – red, white, and blue.", price_in_cents: 3000)

jacket = Product.create!(name:"North Face", description:"The Nuptse jacket, originally designed in 1992 for climbing expeditions in the Himalayas, gets an updated hood and crushed velvet materialization. The jacket features a hood that packs into the collar in an oversized style.", price_in_cents: 10000)

bag = Product.create!(name:"Black GG Marmont Belt Bag", description: "'Chevron' quilted leather three-compartment belt bag featuring assorted pouches in black. Adjustable and detachable belt-style strap with pin-buckle fastening. Logo hardware at faces.", price_in_cents: 100000)

review1 = Review.create!(product_id: shoes.id, comment: "Awesome!")

review2 = Review.create!(product_id: jacket.id, comment: "Super cool and warm!")

review3 = Review.create!(product_id: bag.id, comment: "gucci gang 4 lyfe")

review4 = Review.create!(product_id: jacket.id, comment: "The coziest of team cozy")
