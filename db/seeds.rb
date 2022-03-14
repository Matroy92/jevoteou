# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Vote.destroy_all

puts "Creating addresses..."
home = { address: "2022 Madison Avenue, 10035, New York, NY, USA", zipcode: "10030" || "10000" || "10015"}
lycée_français = { address: "Lycée Français,1st 75th E street, 10035, New York, NY, USA", zipcode: "10027"}
hospital = { address: "12th wall street , 10035, New York, NY, USA", zipcode: "10024"}

[ home, lycée_français, hospital ].each do |attributes|
  vote = Vote.create!(attributes)
  puts "Created #{vote.address}"
end
puts "Finished!"
